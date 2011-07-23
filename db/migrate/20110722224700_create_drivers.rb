class CreateDrivers < ActiveRecord::Migration
  def self.up
    create_table :drivers do |t|
      t.string :name
      t.string :license

      t.timestamps
    end
  end

  def self.down
    drop_table :drivers
  end
end
