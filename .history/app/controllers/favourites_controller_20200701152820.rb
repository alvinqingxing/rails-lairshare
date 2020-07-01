class FavouritesController < ApplicationController
  def create
    favourite = Favourite.new
    favourite.lair = Lair.find(params[:lair_id])
    favourite.user = current_user
    favourite.save
  end
end
