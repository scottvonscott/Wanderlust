class DestinationsController < ApplicationController
    before_action :set_destination

    def index
        @destinations = Destination.all
    end

    def new
    end

    def create
    end

    def show
    end

    def destroy
    end

    private

    def destination_params
    end

    def set_destination
    end
end
