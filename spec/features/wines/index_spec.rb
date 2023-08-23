require 'rails_helper'

RSpec.describe "Wines index page" do
    it "It shows child name and attributes" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        winery_1.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        winery_1.wines.create(name: "Chardonnay", abv: 14, still_available: true)
        winery_1.wines.create(name: "La Fantasia", abv: 7, still_available: false)
        winery_1.wines.create(name: "Zingaro", abv: 15, still_available: true)  

        visit "/wines"
    end
end