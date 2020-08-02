class TripsController < ApplicationController
    before_action :set_trip, only: [:show, :update, :edit, :destroy]
    before_action :redirect_if_not_owner, only: [:show, :update, :edit, :destroy]

    def index
        @trips = Trip.all
    end

    def new
        @trip = Trip.new
    end

    def create
        @trip = current_user.trips.build(trip_params)
        if  @trip.save
            @trip.days_to_plan
            redirect_to trip_path(@trip)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @trip.update_days(params[:trip][:days_duration])
        if @trip.update(trip_params)
            
            redirect_to trip_path(@trip)
        else
            render :edit
        end
    end

    def destroy
        @trip.destroy
        redirect_to trips_path
    end

    private

    def trip_params
        params.require(:trip).permit(:title, :days_duration)
    end

    def set_trip
        @trip = Trip.find(params[:id])
    end

    def redirect_if_not_owner
        if @trip.user != current_user
            redirect_to user_path(current_user), alert: "You can't edit this!"
        end
    end


end
