class AircraftManufacturer < ActiveRecord::Base
  has_many :aircraft_models
  has_many :airplanes
  has_many :flights, :through => :airplanes
  has_many :bookings, :through => :airplanes
  has_many :operators, :through => :airplanes

end