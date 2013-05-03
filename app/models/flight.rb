class Flight < ActiveRecord::Base
  belongs_to :airplane
  belongs_to :user, :through => :airplane
  belongs_to :operator, :through => :user

end