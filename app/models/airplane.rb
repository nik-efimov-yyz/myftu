class Airplane < ActiveRecord::Base
  belongs_to :user
  belongs_to :manufacturer, :class_name => "AircraftManufacturer"
  belongs_to :model, :class_name => "AircraftModel"
  has_one :operator, :through => :user
  has_many :bookings
  has_many :flights
  has_many :snags
  has_many :notes, :as => :notable
  has_many :photos, :as => :picturable

  attr_accessible :manufacturer_name, :model_name, :serial_number, :registration, :year

  attr_accessor :manufacturer_name, :model_name

  def aircraft_type
    parts = []
    parts << manufacturer.name if manufacturer.present?
    parts << model.name if model.present?
    parts.compact.join(" ")
  end

  def title
    @title || registration
  end

  def to_param
    "#{id} #{registration}".parameterize
  end



end