class User
    attr_reader :name, :rented_scooter, :rental_start_time, :rental_end_time

    PRICE_PER_MINUTE = 0.20

    def initialize(name)
        @name = name
        @rented_scooter = nil
        @rental_start_time = nil
        @rental_end_time = nil
    end

    def rent_scooter(scooter, station)
        return false if @rented_scooter || scooter.avai != "Available"

        if scooter.rent
            @rented_scooter = scooter
            @rental_start_time = Time.now.to_i
            true
        end
            false
    end
    
    def return_scooter(docking_station)
        if @rented_scooter
            docking_station.dock_scooter(@rented_scooter)
            @rented_scooter.return_scooter
            @rental_end_time = Time.now.to_i
            
            true
        else
            false
        end
    end

    def rental_duration
        return 0 unless @rental_start_time && @rental_end_time

        @rental_end_time - @rental_start_time
    end

    def rental_cost
        (rental_duration / 60) * PRICE_PER_MINUTE
    end
end
