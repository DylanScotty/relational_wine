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

    #User Story 14
    it "updates the wine and redirects to the wine show page" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)

        visit "/wines/#{wine_1.id}"

        click_link("Update Wine")

        expect(page).to have_current_path("/wines/#{wine_1.id}/edit")

        fill_in 'name', with: 'Taco Bell Wine'
        fill_in 'abv', with: '27'
        choose "still_available_true"

        click_button "Update Wine"

        expect(page).to have_current_path("/wines/#{wine_1.id}")
        expect(page).to have_content("Taco Bell Wine")
        expect(page).to have_content("27")
    end

    #User Story 20
    it "has a link to delete the wine" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)

        visit "/wines/#{wine_1.id}"

        expect(page).to have_content("Delete #{wine_1.name}")

        click_link("Delete #{wine_1.name}")

        expect(current_path).to eq("/wines")
        expect(page).to_not have_content("Voyager Vineyard")
    end
end
