require 'date'

class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    find_lair
    @booking.lair = @lair
    @booking.start_date = params[:booking][:start_date].to_date
    @booking.end_date = params[:booking][:end_date].to_date
    @booking.status = "pending"
    @booking.user = current_user
    days = (@booking.end_date - @booking.start_date).to_i
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
    @days = (@booking.end_date - @booking.start_date).to_i
    @total_price = @days * @booking.lair.price_per_night
  end

  def accept
    @booking = Booking.find_by(params[:booking_id])
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end

  def reject
    @booking = Booking.find_by(params[:booking_id])
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_price)
  end
end
