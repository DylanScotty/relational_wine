require 'rails_helper'

RSpec.describe "Wines index page" do
    #User Story 3
    it "It shows child name and attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: true)  

        visit "/wines"

        expect(page).to have_content(wine_1.name)
        expect(page).to have_content(wine_1.abv)
        expect(page).to have_content(wine_1.still_available)
    end

    #User Story 15
    it "Only shows true records on the index page" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: false)

        visit "/wines"

        expect(page).to have_content(wine_1.name)
        expect(page).to_not have_content(wine_2.name)
    end

    #User Story 17
    it "displays a link to edit each of the wines info" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)

        visit "/wines"

        expect(page).to have_link("Edit Info For #{wine_1.name}", href: "/wines/#{wine_1.id}/edit")

        click_link("Edit Info For #{wine_1.name}", href: "/wines/#{wine_1.id}/edit")

        expect(page).to have_current_path("/wines/#{wine_1.id}/edit")
    end

end