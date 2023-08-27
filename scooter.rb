class Scooter
    attr_reader :id, :avai

    def initialize
        @id =
        @avai = "Available"
    end

    def rent
        return false if @avai != "Available"

        @avai = "Rented"
        true
    end

    def return_scooter
        @avai = "Available"
    end

    def broken_scooter
        @avai = "Broken"
    end

    def repaired
        @avai = "Available"
    end
end
