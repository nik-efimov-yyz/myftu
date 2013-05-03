class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :addressable, :polymorphic => true
      t.string :type
      t.string :label
      t.string :city
      t.string :street_address
      t.string :street_address_2
      t.string :state_code
      t.string :country_code
      t.string :zip
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.text   :remarks
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
