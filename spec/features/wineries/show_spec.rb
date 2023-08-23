require 'rails_helper'

RSpec.describe 'the wineries show page' do
    it "displays the attributes of the winery" do
        winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)

        visit "/wineries/#{winery_1.id}"

        expect(page).to have_content(winery_1.name)
        expect(page).to have_content(winery_1.location)
        expect(page).to have_content(winery_1.employees)
        expect(page).to have_content(winery_1.still_active)
    end
end