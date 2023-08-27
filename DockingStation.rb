class DockingStation
    attr_reader :location, :capacity

    def initialize(location, capacity)
        @location = location
        @capacity = capacity
        @scooter = []
    end

    def dock_scooter(scooter)
        return if @scooter.length >= @capacity || scooter.avai != "Available"

        @scooter << scooter
    end

    def undock_scooter(scooter)
        @scooter.delete(scooter)
    end
end
