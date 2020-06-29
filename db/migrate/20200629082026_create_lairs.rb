class CreateLairs < ActiveRecord::Migration[6.0]
  def change
    create_table :lairs do |t|
      t.string :name
      t.text :description
      t.string :address
      t.decimal :price_per_night

      t.timestamps
    end
  end
end
