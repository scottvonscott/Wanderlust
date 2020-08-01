class AttractionsController < ApplicationController
    before_action :set_attraction, only: [:show, :update, :edit, :destroy]
    before_action :set_destination, only: [:new, :show, :create, :update, :edit]

    def index
    
        @attractions = Attraction.order_by_location
    end

    def new
        if  params[:destination_id]
            @attraction= @destination.attractions.build
        else
            @attraction = Attraction.new
        end
    end

    def create
        @attraction = Attraction.create(attraction_params)
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

    def set_destination
        @destination = Destination.find_by(id: params[:destination_id])
    end

    
end
