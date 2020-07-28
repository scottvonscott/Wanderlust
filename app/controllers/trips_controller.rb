class TripsController < ApplicationController
    before_action :set_trip

    def index
        @trips = Trip.all
    end

    def new
    end

    def create
    end

    def destroy
    end

    private

    def trip_params
    end

    def set_trip
    end


end
