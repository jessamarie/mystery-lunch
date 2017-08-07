class CreateCustomerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :about
      t.string :interests
      t.references :customer

      t.timestamps
    end
  end
end
