class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.decimal :total_price
      t.references :lair, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
