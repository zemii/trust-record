class TopController < ApplicationController
    def top
        @rentals = Rental.all
    end
end
