class ReviewsController < ApplicationController

  # レビュー投稿ページ（8/21追加）
  def new
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

  private

  def review_params
    params.require(:review).permit(:title,
                                   :rating,
                                   :spice_level)
  end
end
