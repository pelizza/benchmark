namespace :db do
  desc 'Clear the database.'
  task :clear => :environment do
    VehicleState.delete_all
    Driver.delete_all
    Vehicle.delete_all
    TrackingModule.delete_all
  end
end