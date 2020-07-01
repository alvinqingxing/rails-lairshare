class FavouritesController < ApplicationController
  def create
    fave = Favourite.new
    fave.user = current_user
    fave.save
  end
end
