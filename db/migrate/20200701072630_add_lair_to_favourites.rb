class AddLairToFavourites < ActiveRecord::Migration[6.0]
  def change
    add_reference :favourites, :lair, null: false, foreign_key: true
  end
end
