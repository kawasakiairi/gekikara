class ReviewsController < ApplicationController

  # レビュー投稿ページ（8/21追加）
  def new
    @review = Review.new
  end

  def def show
    @review = Review.find(params[:id])
  end

end
