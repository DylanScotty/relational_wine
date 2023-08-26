require 'rails_helper'

RSpec.describe "Wines show page" do 
    #User Story 4
    it "can see the wine name with attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: false)

        visit "/wines/#{wine_1.id}"

        expect(page).to have_content(wine_1.name)
        expect(page).to have_content(wine_1.abv)
        expect(page).to have_content(wine_1.still_available)
        expect(page).to_not have_content(wine_2.name)
        expect(page).to_not have_content(wine_2.abv)
        expect(page).to_not have_content(wine_2.still_available)
    end
end
