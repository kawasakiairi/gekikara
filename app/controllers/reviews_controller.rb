class ReviewsController < ApplicationController

  # レビュー投稿ページ（8/21追加）
  def new
    @body_class = "background"

    @food = Food.find(params[:food_id])
    @review = Review.new
  end

  def create
    @food = Food.find(params[:food_id])
    @review = @food.reviews.build(review_params.merge(user: current_user))
    if @review.save
      flash[:notice] = "レビューの投稿に成功しました"
      redirect_to food_path(@food)
    else
      flash.now[:alert] = "レビューの投稿に失敗しました"
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
      flash[:notice] = "レビューの編集に成功しました"
      redirect_to food_path(@food)
    else
      flash.now[:alert] = "レビューの編集に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:title,
                                   :rating,
                                   :spice_level)
  end
end
