require 'rails_helper'

RSpec.describe 'the wineries index page' do
    it "displays the name of the wineries" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        winery_2 = Winery.create(name: "Catena Zapata", location: "Argentina", employees: 29, still_active: true)

        visit "/wineries"

        expect(page).to have_content(winery_1.name)
        expect(page).to have_content(winery_2.name)
    end
end