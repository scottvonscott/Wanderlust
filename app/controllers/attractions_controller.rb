class AttractionsController < ApplicationController
    before_action :set_attraction, only: [:show, :update, :edit, :destroy]

    def index
        byebug
        @attractions = Attraction.order(' ASC')
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

    def edit
    end

    def update
        if @attraction.update(attraction_params)
            redirect_to attraction_path(@attraction)
        else
            render :edit
        end
    end

    def destroy
        @attraction.destroy
        redirect_to attractions_path
    end

    private

    def attraction_params
        params.require(:attraction).permit(:name, :description, :destination_id)
    end

    def set_attraction
        @attraction = Attraction.find_by(id: params[:id])
    end

    
end
