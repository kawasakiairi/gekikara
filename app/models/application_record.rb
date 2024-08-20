class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  #検索窓(8/20追加)
  scope :search, -> (search_params) do
    # search_paramsが空の場合以降の処理を行わない。
    return if search_params.blank?

    # パラメータを指定して検索する
    keyword_like(search_params[:keyword])
  end

  scope :keyword_like, -> (keyword) {
    where('name LIKE :keyword OR
           title LIKE :keyword OR
           body LIKE :keyword', keyword: "%#{keyword}%") if keyword.present?
  }
end
