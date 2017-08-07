class CreateRestaurantProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_profiles do |t|
      t.string :name
      t.string :description
      t.string :address
      t.references :restaurant

      t.timestamps
    end
  end
end
