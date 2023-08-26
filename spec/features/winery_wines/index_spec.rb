require 'rails_helper'

RSpec.describe "winery wines index page" do
    #User Story 5
    it "show wines with winery and associating attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: false)

        visit "/wineries/#{winery.id}/wines"

        expect(page).to have_content(winery.name)
        expect(page).to have_content(wine_1.name)
        expect(page).to have_content(wine_1.abv)
        expect(page).to have_content(wine_1.still_available)
        expect(page).to have_content(wine_2.name)
        expect(page).to have_content(wine_2.abv)
        expect(page).to have_content(wine_2.still_available)
    end

    #User Story 10
    it "shows a link that takes you to the wines of that parent" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: false) 

        visit "/wineries/#{winery.id}"

        expect(page).to have_link("Wines from #{winery.name}", href: "/wineries/#{winery.id}/wines")
    end

end