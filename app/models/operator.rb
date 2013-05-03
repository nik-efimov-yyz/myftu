class Operator < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  has_one :address, :as => :addressable
  has_many :bookings
  has_many :flights
  has_many :airplanes
  has_many :aircraft_types, :through => :airplanes
  has_many :pilots
  has_many :instructors
  has_many :dispatchers

  validates_presence_of :name
  validates_presence_of :owner

  attr_protected :owner_id, :created_at, :updated_at, :status

end
