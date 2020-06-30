class LairsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @lair = Lair.find_by(params[:lair_id])
    @booking = Booking.new
    @booking.lair = find_lair
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
