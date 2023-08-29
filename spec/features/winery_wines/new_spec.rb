require 'rails_helper'

RSpec.describe "Winery Wine Creation", type: :feature do
    describe "when adding a new wine to the winery" do
        it "creates a new wine and redirects to the winery wines index page" do
            winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
            
            visit "/wineries/#{winery.id}/wines"

            click_link("New #{winery.name} Wine")

            expect(page).to have_current_path("/wineries/#{winery.id}/wines/new")

            fill_in "name", with: "Boris"
            fill_in "abv", with: "12"
            choose "still_available_true"

            click_button "Create Wine"

            expect(page).to have_current_path("/wineries/#{winery.id}/wines")
            expect(page).to have_content("Boris")
            expect(page).to have_content("12")
        end
    end
end