class AddCoordinatesToLairs < ActiveRecord::Migration[6.0]
  def change
    add_column :lairs, :latitude, :float
    add_column :lairs, :longitude, :float
  end
end
