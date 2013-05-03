class Flight < ActiveRecord::Base
  belongs_to :airplane
  belongs_to :operator
  has_one :user, :through => :airplane
end