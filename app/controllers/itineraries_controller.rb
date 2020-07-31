class ItinerariesController < ApplicationController
    before_action :set_itinerary, only: [:show, :update]

    def index
        @itineraries = Itinerary.all
    end

    def new
        @itinerary = Itinerary.new
    end

    def create
        @itinerary = Itinerary.new(itinerary_params)
        if  @itinerary.save
            redirect_to itinerary_path(@itinerary)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end
    
    private

    def itinerary_params
        params.require(:itinerary).permit(:day_of_trip, :date)
    end

    def set_itinerary
        
        @itinerary = Itinerary.find(params[:id])
    end

end
