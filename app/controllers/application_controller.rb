class ApplicationController < ActionController::Base
  # 全てのコントローラーアクションの前にユーザーがログインしているかどうかを確認する（8/12追加）
  before_action :require_login
  before_action :set_search

  # 検索窓（8/21追加）
  def set_search
    @search_params = food_search_params
    @foods = Food.search(@search_params).includes(:food_category, :food_country)
  end

  private
  # ユーザーが認証されていない場合に呼び出されるメソッド
  # sorceryを使用する場合、require_loginのなかで実行され、ログインページにリダイレクトする（8/12追加）
  def not_authenticated
    redirect_to login_path, alert: I18n.t("user_session.new.alert")
  end

  def food_search_params
    params.fetch(:search, {}).permit(:keyword)
  end
end
