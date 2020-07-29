class TripsController < ApplicationController
    before_action :set_trip, only: [:show, :update]

    def index
        @trips = Trip.all
    end

    def new
        @trip = Trip.new
    end

    def create
        
        @trip = current_user.trips.build(trip_params)
        if @trip.save
            redirect_to trip_path(@trip)
        else
            render :new
        end

    end

    def show
    end

    def destroy
    end

    private

    def trip_params
        params.require(:trip).permit(:title, :days_duration)
    end

    def set_trip
        @trip = Trip.find(params[:id])
    end


end
