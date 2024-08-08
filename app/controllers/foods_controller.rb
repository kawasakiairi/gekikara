class FoodsController < ApplicationController

  # 食品検索結果一覧ページ
  def index
    @foods = Food.where('name LIKE ?', "%#{params[:query]}%") if params[:query].present?
  end

  def search
    # 検索フォームだけを表示するので、特に何も設定しない
  end



end
