require 'rails_helper'

RSpec.describe Wine, type: :model do
    it {should belong_to :winery}
end