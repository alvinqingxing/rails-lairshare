class LairsController < ApplicationController
  def index
    @lairs = Lair.all
  end

  def new
    @user = current_user
    @lair = Lair.new
  end

  def create
    @lair = Lair.new(lair_params)
    @lair.user = current_user
    if @lair.save
      redirect_to lair_path(@lair)
    else
      redirect_to dashboard_path
    end
  end

  def show
    @lair = Lair.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def lair_params
    params.require(:lair).permit(:name, :description, :address, :price_per_night)
  end
end
