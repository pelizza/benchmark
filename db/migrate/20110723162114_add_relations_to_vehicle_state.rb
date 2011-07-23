class AddRelationsToVehicleState < ActiveRecord::Migration
  def self.up
    add_column :vehicle_states, :vehicle_id, :integer
    add_column :vehicle_states, :driver_id, :integer
    add_column :vehicle_states, :tracking_module_id, :integer
  end

  def self.down
    remove_column :vehicle_states, :tracking_module_id
    remove_column :vehicle_states, :driver_id
    remove_column :vehicle_states, :vehicle_id
  end
end
