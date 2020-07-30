class ScheduledAttractionsController < ApplicationController
        before_action :set_scheduled_attraction, only: [:show]
    
        def index
        end
    
        def new
            if params[:itinerary_id] && @itinerary = Itinerary.find_by(id: params[:itinerary_id])
            @scheduled_attraction = @itinerary.scheduled_attractions.build
            @scheduled_attraction.build_attraction
            @scheduled_attraction.attraction.build_destination
            end

        end
    
        def create
            @itinerary = Itinerary.find_by(id: params[:itinerary_id])
            @scheduled_attraction = @itinerary.scheduled_attractions.build(scheduled_attraction_params)
            if @scheduled_attraction.valid?
                @scheduled_attraction.save
                redirect_to trip_itinerary_path(@itinerary.trip, @itinerary)
            else
                render :new
            end
    
        end

        def show
        end
    
        def destroy
        end
    
        private
    
        def scheduled_attraction_params
            params.require(:scheduled_attraction).permit(:time_of_day, :attraction_id, :itinerary_id, attraction_attributes: [:name, :description, 
            :destination_id, destination_attributes: [:city, :country, :continent, :primary_language]])
        end
    
        def set_scheduled_attraction
            @scheduled_attraction = ScheduledAttraction.find(params[:id])
        end
    
    
end
