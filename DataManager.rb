require 'csv'

class DataManager
    def self.save_database(user, rental_start_time, rental_end_time)
        duration_minutes = (rental_end_time - rental_start_time) / 60
        cost = duration_minutes * User::PRICE_PER_MINUTE

        CSV.open('scooter_data.csv', 'a') do |csv|
            csv << [user.name, Time.at(rental_start_time).to_datetime, Time.at(rental_end_time).to_datetime, duration_minutes, cost]
        end
    end
end