class AircraftModel < ActiveRecord::Base
  belongs_to :manufacturer, :class_name => "AircraftManufacturer"
  has_many :models, :through => :manufacturer, :class_name => "AircraftModel"

end