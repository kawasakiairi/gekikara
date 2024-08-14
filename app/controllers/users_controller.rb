class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  # ユーザー登録ページ（8/12追加）
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # 自動的にログインさせる
      flash[:notice] = 'ユーザーの作成に成功しました'
      redirect_to root_path
    else
      flash.now[:alert] = 'ユーザーの作成に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  # ユーザーページ（8/14追加）
  def show
    @user = User.find(params[:id])
  end

  private

  # ユーザー登録（8/12追加）
  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end
end
