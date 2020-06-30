class LairsController < ApplicationController
  def index
    @lairs = Lair.all
  end

  def new
  end

  def create
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
end
