class CreateRestaurantProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_profiles do |t|
      t.string :name, null:false
      t.string :description
      t.string :address
      t.string :profile_pic
      t.references :restaurant

      t.timestamps
    end
  end
end
