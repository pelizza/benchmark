class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :registration_plate
      t.string :renavam
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
