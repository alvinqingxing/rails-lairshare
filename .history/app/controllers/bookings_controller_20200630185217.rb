class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.lair = find_lair
    @booking.lair = @lair
    @booking.status = "pending"
    @booking.user = current_user
    if @booking.valid?
      @booking.save

      redirect_to @booking
    else
      redirect_to @booking.lair
    end
  end

  def show
    @booking = Booking.find_by(params[:booking_id])
  end

  def accept
    @booking.status = "accepted"
  end

  def reject
    @booking.status = "rejected"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_price)
  end

  def find_lair
    Lair.find(params[:lair_id])
  end
end
