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
    @lair.user = current_user
  end

  def edit
    @lair = Lair.find(params[:id])
    @lair.user = current_user
  end

  def update
    @lair = Lair.find(params[:id])
    @lair.user = current_user
    @lair.update(lair_params)
    redirect_to dashboard_path
  end

  def destroy
    @lair = Lair.find(params[:id])
    @lair.user = current_user
    @lair.destroy(lair_params)
    redirect_to dashboard_pathend

private

  def lair_params
    params.require(:lair).permit(:name, :description, :address, :price_per_night)
  end
end
