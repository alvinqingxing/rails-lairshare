class FavouritesController < ApplicationController
  def create
    @lair = Lair.find(params[:lair_id])
  end
end
