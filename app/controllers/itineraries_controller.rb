class ItinerariesController < ApplicationController
    before_action :set_itinerary

    def index
        @itineraries = Itinerary.all
    end

    def new
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def itinerary_params
    end

    def set_itinerary
    end
end
