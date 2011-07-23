class AddGeoToVehicleState < ActiveRecord::Migration
  def self.up
    add_column :vehicle_states, :latitude, :float
    add_column :vehicle_states, :longitude, :float
  end

  def self.down
    remove_column :vehicle_states, :longitude
    remove_column :vehicle_states, :latitude
  end
end
