class ReviewsController < ApplicationController

  # レビュー投稿ページ（8/21追加）
  def new
    @body_class = "background"
    @food = Food.find(params[:food_id])
    @review = @food.reviews.new
  end

  def create
    @food = Food.find(params[:food_id])
    @review = @food.reviews.build(review_params.merge(user: current_user))
    if @review.save
      flash[:notice] = I18n.t("review.create.notice")
      redirect_to food_path(@food)
    else
      flash.now[:alert] = I18n.t("review.create.alert")
      render :new, status: :unprocessable_entity
    end
  end

  # レビュー編集ページ（8/22追加）
  def edit
    @food = Food.find(params[:food_id])
    @review = @food.reviews.find(params[:id])
  end

  def update
    @food = Food.find(params[:food_id])
    @review = @food.reviews.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = I18n.t("review.update.notice")
      redirect_to food_path(@food)
    else
      flash.now[:alert] = I18n.t("review.update.alert")
      render :edit, status: :unprocessable_entity
    end
  end

  # レビュー削除
  def destroy
    @food = Food.find(params[:food_id])
    @review = @food.reviews.find(params[:id])
    @review.destroy!

    if @review.destroy
      redirect_to food_path(@food), notice: I18n.t("review.destroy.notice"), status: :see_other
    else
      redirect_to food_path(@food), alert: I18n.t("review.destroy.alert"), status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:title,
                                   :rating,
                                   :spice_level)
  end
end
