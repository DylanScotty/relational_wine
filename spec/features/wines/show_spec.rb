require 'rails_helper'

RSpec.describe "Wines show page" do 
    it "can see the wine name with attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: true)

        visit "/wines/#{wine_1.id}"
    end
end
