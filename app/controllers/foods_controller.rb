class FoodsController < ApplicationController
  skip_before_action :require_login, only: %i[index search show]

  # 食品検索結果一覧ページ（8/11追加）
  def index
    @search_params = food_search_params
    @foods = Food.search(@search_params).includes(:food_category, :food_country)

    # ページネーション（8/11追加）
    sort_order = case params[:sort]
    when 'old'
      'created_at ASC'
    when 'hot'
      'spice_level DESC'
    when 'mild'
      'spice_level ASC'
    else
      'created_at DESC'
    end

    @total_count = @foods.count
    @foods = @foods.order(sort_order).page(params[:page]).per(6)

  end

  # トップページ（8/11追加）
  def search
    # 初期化処理
    @search_params = {}
  end

  # 食品詳細表示ページ
  def show
    @food = Food.find(params[:id])
  end


  private

  def food_search_params
    params.fetch(:search, {}).permit(:food_country_id,
                                     :food_category_id,
                                     :price_from,
                                     :price_to,
                                     :keyword)
  end
end
