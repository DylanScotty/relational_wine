class WineryWinesController < ApplicationController
    def index
        @winery = Winery.find(params[:winery_id])
        if params.keys.include?("sort")
            @wines = @winery.wines.order(:name)
        else
            @wines = @winery.wines
        end
    end

    def new
        @winery = Winery.find(params[:winery_id])
    end

    def create
        @winery = Winery.find(params[:winery_id])
        wine = @winery.wines.create(wine_params)
        redirect_to "/wineries/#{@winery.id}/wines"
    end



    private

    def wine_params
        params.permit(:id, :name, :abv, :still_available)
    end
end