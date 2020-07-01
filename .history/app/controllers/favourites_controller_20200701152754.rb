class FavouritesController < ApplicationController
  def create
    favourite = Favourite.new
    @lair = Lair.find(params[:lair_id])
    @user = current_user
  end
end
