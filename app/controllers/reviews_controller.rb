class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @user = @booking.user

    #@user = current_user
    

    @review.booking = @booking
    @review.user = @user

    @lair = @booking.lair
    authorize @review

    if @review.save
      redirect_to lair_path(@lair)
    else
      render "review/new"
    end
  end

  def destroy
    @review = Review.find(params[:id])

    authorize @review

    @review.destroy
    redirect_to lair_path(@review.booking.lair)
  end

  private

  def review_params
    params.require(:review).permit(:title, :description, :rating )
  end
end
