require 'rails_helper'

RSpec.describe 'the wineries index page' do
    #User Story 1
    it "displays the name of the wineries" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        winery_2 = Winery.create(name: "Catena Zapata", location: "Argentina", employees: 29, still_active: true)

        visit "/wineries"

        expect(page).to have_content(winery_1.name)
        expect(page).to have_content(winery_2.name)
    end
    #User Story 6
    it "displays records by most recently created" do 
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        winery_2 = Winery.create(name: "Catena Zapata", location: "Argentina", employees: 29, still_active: true)

        visit "/wineries"

        expect(page).to have_content(winery_1.name)
        expect(page).to have_content(winery_1.created_at)
        expect(page).to have_content(winery_2.name)
        expect(page).to have_content(winery_2.created_at)
    end

    #User Story 8
    it "has a link to the wines index" do 
        visit "/wineries"

        expect(page).to have_link("Wines", href: "/wines")
    end

    #User Story 9
    it "has a link to the wineries index" do
        visit "/wines"

        expect(page).to have_link("Wineries", href: "/wineries")
    end

end