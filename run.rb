require './scooter.rb'
require './DockingStation'
require './user.rb'
require './DataManager.rb'

docking_station = DockingStation.new("Suria Sabah", 10)
scooter1 = Scooter.new
scooter2 = Scooter.new

docking_station.dock_scooter(scooter1)
docking_station.dock_scooter(scooter2)

user = User.new("Charles")

user.rent_scooter(scooter1, docking_station)

# for example, 5 minutes "sleep(5 * 60)"
sleep(5) # Sleep for 5 seconds if sleep for 5 minutes 5 * 60 = 300 seconds

user.return_scooter(docking_station)

DataManager.save_database(user, user.rental_start_time, user.rental_end_time)

# print rental duration and cost
puts "Rental Duration: #{user.rental_duration} seconds"
puts "Rental Cost: RM #{user.rental_cost}"