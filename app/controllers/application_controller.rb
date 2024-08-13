class ApplicationController < ActionController::Base
  # 全てのコントローラーアクションの前にユーザーがログインしているかどうかを確認する（8/12追加）
  before_action :require_login

  private

  # ユーザーが認証されていない場合に呼び出されるメソッド
  # sorceryを使用する場合、require_loginのなかで実行され、ログインページにリダイレクトする（8/12追加）
  def not_authenticated
    redirect_to login_path, alert: 'ログインしてください'
  end


end
