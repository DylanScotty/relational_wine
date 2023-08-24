require 'rails_helper'

RSpec.describe "winery wines index page" do
    it "show wines with winery and associating attributes" do
        winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
        wine_1 = winery.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
        wine_2 = winery.wines.create(name: "Chardonnay", abv: 14, still_available: false)

        visit "/wineries/#{winery.id}/wines"
    end
end