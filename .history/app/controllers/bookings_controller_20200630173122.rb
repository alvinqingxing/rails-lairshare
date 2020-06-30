class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    find_lair
    @booking.lair = @lair
    if @booking.valid?
      @booking.save

      redirect_to dashboard_path
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

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_price, :lair_id, :user_id)
  end

  def find_lair
    @lair = Lair.find(params[:lair_id])
  end
end
