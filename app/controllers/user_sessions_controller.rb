class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @body_class = "background"
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(root_path, notice: I18n.t("user_session.create.notice"))
    else
      flash.now[:alert] = I18n.t("user_session.create.alert")
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to(login_path, status: :see_other, notice: I18n.t("user_session.destroy.notice"))
  end
end
