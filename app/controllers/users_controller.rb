  class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create show]

  # ユーザー登録ページ（8/12追加）
  def new
    @body_class = "background"

    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # 自動的にログインさせる
      flash[:notice] = I18n.t("user.create.notice")
      redirect_to root_path
    else
      flash.now[:alert] = I18n.t("user.create.alert")
      render :new, status: :unprocessable_entity
    end
  end

  # ユーザーページ（8/14追加）
  def show
    @body_class = "background"

    @user = User.find(params[:id])
    @favorite_foods = @user.favorites.includes(:food_category).order(created_at: :desc)
    @food = Food.find(params[:id])
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
