class WineryWinesController < ApplicationController
    def index
        @winery = Winery.find(params[:winery_id])
        @winery_wines = @winery.wines
    end
end