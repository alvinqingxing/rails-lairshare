class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @review = Review.new(review_params)
    find_restaurant
    @review.restaurant = @restaurant
    if @review.valid?
      @review.save

      redirect_to @restaurant
    else
      render :new
    end
  end

  def show
    @booking = Booking.find_by(booking_params)
  end

  def accept
  end

  def reject
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
