class FavouritesController < ApplicationController
  def create
    fave = Favourite.new
    fave.user = current_user
    fave.lair = Lair.find(params[:lair_id])
    fave.save

    redirect_back
  end

  def exists(lair)
    fave = Favourite.new
    fave.user = current_user
    fave.lair = lair
    fave.valid?
  end
end
