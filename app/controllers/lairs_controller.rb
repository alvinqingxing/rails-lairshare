class LairsController < ApplicationController

  def index
    @lairs = policy_scope(Lair).order(created_at: :desc)
  end

  def new
    @user = current_user
    @lair = Lair.new
    authorize @lair
  end

  def create
    @lair = Lair.new(lair_params)
    authorize @lair
    @lair.user = current_user
    if @lair.save
      redirect_to lair_path(@lair)
    else
      redirect_to dashboard_path
    end
  end

  def show
    @lair = Lair.find(params[:id])
    authorize @lair
  end

  def edit
    @lair = Lair.find(params[:id])
    @lair.user = current_user
  end

  def update
    @lair = Lair.find(params[:id])
    @lair.user = current_user
    @lair.update(lair_params)
    redirect_to lair_path(@lair)
  end

  def destroy
    @lair = Lair.find(params[:id])
    @lair.user = current_user
    @lair.destroy
    redirect_to dashboard_path
  end

private

  def lair_params
    params.require(:lair).permit(:name, :description, :address, :price_per_night, :photo)
  end
end
