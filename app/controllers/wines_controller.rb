class WinesController < ApplicationController
    def index
        @wines = Wine.all
    end

    def show 
        @wine = Wine.find(params[:id])
    end

    def edit
        @wine = Wine.find(params[:id])
    end

    def update
        wine = Wine.find(params[:id])
        wine.update(wine_params)
        redirect_to "/wines/#{wine.id}"
    end

    def destroy
        wine = Wine.find(params[:id])
        wine.destroy
        redirect_to "/wines"
    end


    private

    def wine_params
        params.permit(:id, :name, :abv, :still_available)
    end
end