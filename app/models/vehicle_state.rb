class VehicleState < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :driver
  belongs_to :tracking_module
end
