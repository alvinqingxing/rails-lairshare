class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @lair = Lair.find(params[:lair_id])
    @review = Review.new(review_params)
    @review.lair = @lair
    if @review.save
      redirect_to lair_path(@lair)
    else
      render "review/create"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to lair_path(@review.lair)
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :user_id)
  end
end
