class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.references :owner
      t.string :name
      t.string :location
      t.string :website
      t.string :email
      t.string :facebook_page
      t.string :twitter_name
      t.string :linked_in_page
      t.string :stripe_user_id
      t.string :stripe_publishable_key
      t.string :stripe_access_token
      t.timestamps
    end
  end
end
