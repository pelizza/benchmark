class CreateTrackingModules < ActiveRecord::Migration
  def self.up
    create_table :tracking_modules do |t|
      t.integer :number
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :tracking_modules
  end
end
