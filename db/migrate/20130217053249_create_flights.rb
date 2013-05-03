class CreateFlights < ActiveRecord::Migration
  def up
    create_table :flights do |t|
      t.references :airplane
      t.string :registration
      t.string :manufacturer_name
      t.string :model_name
      t.string :pic_name
      t.string :sic_name
      t.string :passengers
      t.datetime  :flight_started_at
      t.datetime :wheels_up_at
      t.datetime :wheels_down_at
      t.datetime :flight_ended_at
      t.float :air_time
      t.float :flight_time
      t.timestamps
    end
  end

  def down
    drop_table :flights
  end
end
