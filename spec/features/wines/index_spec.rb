require 'rails_helper'

RSpec.describe "Wines index page" do
    it "It shows child name and attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: true)  

        visit "/wines"

        expect(page).to have_content(wine_1.name)
        expect(page).to have_content(wine_1.abv)
        expect(page).to have_content(wine_1.still_available)
    end
end