class CreateVehicleStates < ActiveRecord::Migration
  def self.up
    create_table :vehicle_states do |t|
      t.timestamp :timestamp
      t.integer :location
      t.float :speed
      t.integer :heading
      t.integer :odometer
      t.integer :hourmeter
      t.float :battery_voltage
      t.boolean :gps_active
      t.boolean :ignition
      t.integer :active_sensors
      t.integer :active_actuators
      t.boolean :panic
      t.boolean :speed_violation
      t.boolean :geofence_border_violation
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicle_states
  end
end
