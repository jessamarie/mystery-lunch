class CreateCustomerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_profiles do |t|

      t.string :firstname, null:false
      t.string :lastname, null:false
      t.string :about
      t.string :interests
      t.references :customer

      t.timestamps
    end
  end
end
