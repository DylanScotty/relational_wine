require 'rails_helper'

RSpec.describe 'The winery creation' do
    #User Story 11
  it 'links to the new page from the winery index' do
    visit '/wineries'

    click_link('New Winery')
    expect(current_path).to eq('/wineries/new')
  end

  it 'can create a new winery' do
    visit '/wineries/new'

    fill_in('Name', with: 'Dylans Vineyard')
    click_button('Create Winery')

    expect(current_path).to eq("/wineries")
    expect(page).to have_content("Dylans Vineyard")
  end
end