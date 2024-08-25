class FoodsController < ApplicationController
  skip_before_action :require_login, only: %i[index search show]
  before_action :set_food, only: [:favorite, :unfavorite]

  # トップページ（8/11追加）
  def search
    @header_type = "search_header"
    @footer_type = "search_footer"
    @body_class = "search-background"
    # 初期化処理
    @search_params = {}
  end

  # 食品検索結果一覧ページ（8/11追加）
  def index
    @body_class = "background"

    # 検索条件をセッションに保存（8/25追加）
    if params[:search]
      session[:food_search] = food_search_params.to_h
    end

    @search_params = session[:food_search] || {}
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

    # 現在のソートオプションを保存（8/19追加）
    @current_sort = params[:sort] || 'new'

    @total_count = @foods.count
    @foods = @foods.order(sort_order).page(params[:page]).per(10)
  end

  # 食品詳細表示ページ
  def show
    @body_class = "background"

    @food = Food.find(params[:id])
    @reviews = @food.reviews # ここで関連するレビューを取得（8/13追加）

    # ページネーション（8/11追加）
    sort_order = case params[:sort]
    when 'old'
      'created_at ASC'
    else
      'created_at DESC'
    end

    @current_sort = params[:sort] || 'new'
    @reviews = @reviews.order(sort_order).page(params[:page]).per(3)
  end

  # お気に入り食品機能（8/23追加）
  def favorite
    current_user.favorite(@food)
    redirect_to @food, notice: I18n.t("food.favorite.notice")
  end

  def unfavorite
    current_user.unfavorite(@food)
    redirect_to @food, notice: I18n.t("food.unfavorite.notice")
  end

  private

  def food_search_params
    params.fetch(:search, {}).permit(:food_country_id,
                                 :food_category_id,
                                 :price_from,
                                 :price_to,
                                 :keyword)
  end

  # お気に入り食品機能（8/23追加）
  def set_food
    @food = Food.find(params[:id])
  end
end
