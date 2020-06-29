class CreateVillains < ActiveRecord::Migration[6.0]
  def change
    create_table :villains do |t|
      t.string :title
      t.string :profile
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
