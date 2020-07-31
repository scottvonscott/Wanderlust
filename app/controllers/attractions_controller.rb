class AttractionsController < ApplicationController
    before_action :set_attraction, only: [:show, :update]

    def index
        @attractions = Attraction.all
    end

    def new
        @attraction = Attraction.new
    end

    def create
        @attraction = Attraction.new(attraction_params)
        if  @attraction.save
            redirect_to attraction_path(@attraction)
        else
            render :new
        end
    end

    def show
    end

    def destroy
    end

    private

    def attraction_params
        params.require(:attraction).permit(:name, :description, :destination_id)
    end

    def set_attraction
        @attraction = Attraction.find_by(id: params[:id])
    end

    
end
