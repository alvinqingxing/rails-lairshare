class FavouritesController < ApplicationController
  def create
    fave = Favourite.new
    fave.lair = Lair.find(params[:lair_id])
    fave.user = current_user
    fave.save
  end
end
