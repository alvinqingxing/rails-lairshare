require 'date'

class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    find_lair
    @booking.lair = @lair
    @booking.start_date = params[:booking][:start_date].to_date
    @booking.end_date = params[:booking][:end_date].to_date
    @booking.status = "pending"
    @booking.user = current_user
    days = (end_date.to_date - start_date.to_date).to_i
    @booking.total_price = @lair.price_per_night * days
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
    @lair = Lair.find(params[:lair_id])
  end
end
