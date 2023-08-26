require 'rails_helper'

RSpec.describe Winery, type: :model do
  describe ".order_by_creation" do
    it "returns records ordered by creation date in descending order" do
      winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true, created_at: 2.days.ago)
      winery_2 = Winery.create(name: "Catena Zapata", location: "Argentina", employees: 29, still_active: true, created_at: 3.days.ago)

      expect(Winery.order_by_creation).to eq([winery_1, winery_2])
    end
  end
end