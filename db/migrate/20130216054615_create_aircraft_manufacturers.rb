class CreateAircraftManufacturers < ActiveRecord::Migration
  def up
    create_table :aircraft_manufacturers do |t|
      t.string :name
      t.text :about
      t.timestamps
    end
  end

  def down
    drop_table :aircraft_manufacturers
  end
end
