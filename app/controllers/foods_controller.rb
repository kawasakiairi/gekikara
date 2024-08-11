class FoodsController < ApplicationController

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

  def search
    # 初期化処理
    @search_params = {}
  end

  private

  def food_search_params
    params.fetch(:search, {}).permit(:food_country_id,
                                     :food_category_id,
                                     :price_from,
                                     :price_to,
                                     :keyword).to_h
  end
end
