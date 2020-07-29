class DestinationsController < ApplicationController
    before_action :set_destination, only: [:show, :update]

    def index
        @destinations = Destination.all
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(destination_params)
        if @destination.save
            redirect_to destination_path(@destination)
        else
            render :new
        end
    end

    def show
    end

    def destroy
    end

    private

    def destination_params
        params.require(:destination).permit(:city, :country, :continent, :primary_language)
    end

    def set_destination
        @destination = Destination.find_by(id: params[:id])
    end
end
