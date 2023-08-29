class WineriesController < ApplicationController
    def index
        @wineries = Winery.all
    end

    def show
        @winery = Winery.find(params[:id])
    end

    def new
        @winery = Winery.new
    end

    def create
        @winery = Winery.create(winery_params)
        redirect_to '/wineries'
    end

    def edit
        @winery = Winery.find(params[:id])
    end

    def update
        @winery = Winery.find(params[:id])
        @winery.update(winery_params)
        redirect_to "/wineries/#{@winery.id}"
    end

    def destroy
        @winery = Winery.find(params[:id])
        @winery.wines.destroy_all
        @winery.destroy
        redirect_to '/wineries'
    end

    private

    def winery_params
        params.permit(:name, :location, :employees, :still_active)
    end
end