class CreateAircraftModels < ActiveRecord::Migration
  def up
    create_table :aircraft_models do |t|
      t.references :manufacturer
      t.string :name
      t.text :about
      t.timestamps
    end
  end

  def down
    drop_table :aircraft_models
  end
end
