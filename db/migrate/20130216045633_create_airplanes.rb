class CreateAirplanes < ActiveRecord::Migration
  def up
    create_table :airplanes do |t|
      # Associations
      t.references :user
      t.references :manufacturer
      t.references :model
      t.references :maintenance_schedule

      # Aircraft Data
      t.string :registration
      t.string :year
      t.string :serial_number
      t.string :fin_number


      # Other
      t.string :title
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :airplanes
  end
end
