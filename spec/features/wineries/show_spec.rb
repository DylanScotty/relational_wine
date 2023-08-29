require 'rails_helper'

RSpec.describe 'the wineries show page' do
    #User Story 2
    it "displays the attributes of the winery" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)

        visit "/wineries/#{winery_1.id}"

        expect(page).to have_content(winery_1.name)
        expect(page).to have_content(winery_1.location)
        expect(page).to have_content(winery_1.employees)
        expect(page).to have_content(winery_1.still_active)
    end

    #User Story 7
    it "displays the number of wines with each winery" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        winery_1.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        winery_1.wines.create(name: "Chardonnay", abv: 14, still_available: true)

        visit "/wineries/#{winery_1.id}"

        expect(page).to have_content("Wines: 2")
    end

    #User Story 18
    it "has a link to delete the winery" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)

        visit "/wineries/#{winery.id}"

        expect(page).to have_content("Delete #{winery.name}")

        click_link("Delete #{winery.name}")

        expect(current_path).to eq("/wineries")
        expect(page).to_not have_content("Castello di Amorosa")
    end

end