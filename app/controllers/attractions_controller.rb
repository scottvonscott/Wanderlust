class AttractionsController < ApplicationController
    before_action :set_attraction

    def index
        @attractions = Attraction.all
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

    def attraction_params
    end

    def set_attraction
    end

    
end
