class Snag < ActiveRecord::Base
  belongs_to :airplane
  belongs_to :flight
  belongs_to :reporter, :class_name => "User"

end