class ScheduledAttractionsController < ApplicationController
        before_action :set_scheduled_attraction
    
        def index
            @scheduled_attractions = ScheduledAttraction.all
        end
    
        def new
            @scheduled_attraction = ScheduledAttraction.new
        end
    
        def create
            @scheduled_attraction = ScheduledAttraction.new(scheduled_attraction_params)
            if @scheduled_attraction.save
                redirect_to scheduled_attraction_path(@scheduled_attraction)
            else
                render :new
            end
    
        end
    
        def destroy
        end
    
        private
    
        def scheduled_attraction_params
            params.require(:scheduled_attraction).permit(:day_of_trip, :date)
        end
    
        def set_scheduled_attraction
            @scheduled_attraction = ScheduledAttraction.find(params[:id])
        end
    
    end
    
end
