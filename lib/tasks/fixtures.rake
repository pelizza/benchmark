namespace :dev do
  desc 'Creates a set of fixtures, handy to benchmark the database disk usage.'
  task :fixtures => :environment do
    new_car
  end
end


def new_car
  e = TrackingModule.create :number => 123457634, type: "any type# "
  #   1.upto(4).each do |i|
  #     e.sensors.create :number => i, :name => "Sensor", :active => true, :inverted => false
  #   end
  #   1.upto(4).each do |i|
  #     e.actuators.create :number => i, :name => "Actuator", :active => true, :inverted => false
  #   end

  v = Vehicle.create :registration_plate => "MEU3333", :renavam => "1212345678", :description => "Grand Vitara Cinza 01/02"
  d = Driver.create :name => "Driver", :license => "12309847563"

  1.upto(50000).each do |i|
    if(i % 100 == 0)
      print "\x08" * (i-1).to_s.length
      print i
    end
    s = VehicleState.create :hourmeter => (10000 + i)
    s.latitude = -14.23455
    s.longitude = -51.63424
    s.vehicle = v
    s.driver = d
    s.tracking_module = e
    s.odometer = 12300
    s.gps_active = true
    s.ignition = false
    s.speed_violation = true
    s.geofence_border_violation = true
    s.panic = true
    s.battery_voltage = 12.5
    s.address = "Florianopolis, SC"
    s.timestamp = Time.now - i.minutes
    s.heading = 4
    s.speed = 120
    
    s.active_sensors = 12345
    s.active_actuators = 34567

    # s.active_sensors = []
    #     1.upto(e.sensors.size) do
    #       s.active_sensors << (e.sensors.size).to_i
    #     end
    # 
    #     s.active_actuators = []
    #     1.upto(e.actuators.size) do
    #       s.active_actuators << (e.actuators.size).to_i
    #     end

    s.save
  end
  puts
end
