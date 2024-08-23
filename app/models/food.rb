class Food < ApplicationRecord
  # 外部キー制約（8/11追加）
  belongs_to :food_category
  belongs_to :food_country
  has_many :reviews, dependent: :destroy

  # お気に入り食品機能（8/23追加）
  has_many :favorite_foods
  has_many :favorited_by, through: :favorite_foods, source: :user

  # FoodモデルでCarrierWaveを使用するように設定（8/12追加）
  mount_uploader :food_image, FoodImageUploader

  # 検索メソッド（8/11追加）
  scope :search, -> (search_params) do
    # search_paramsが空の場合以降の処理を行わない。
    return if search_params.blank?

    # パラメータを指定して検索する
    food_country_id_is(search_params[:food_country_id])
      .food_category_id_is(search_params[:food_category_id])
      .price_from(search_params[:price_from])
      .price_to(search_params[:price_to])
      .keyword_like(search_params[:keyword])
  end

  scope :food_country_id_is, -> (food_country_id) { where(food_country_id: food_country_id) if food_country_id.present? }
  scope :food_category_id_is, -> (food_category_id) { where(food_category_id: food_category_id) if food_category_id.present? }
  scope :price_from, -> (from) { where('? <= price', from) if from.present? }
  scope :price_to, -> (to) {
    if to.present?
      where('price <= ? AND price > 0', to) # priceが0より大きく、指定したto以下
    else
      where('price >= 0') # price_to が指定されていない場合の条件
    end
  }
  scope :keyword_like, -> (keyword) {
    where('name LIKE :keyword OR
           title LIKE :keyword OR
           body LIKE :keyword', keyword: "%#{keyword}%") if keyword.present?
  }
end
