require 'rails_helper'

RSpec.describe 'the Winery edit' do
  #User Story 12
  it 'links to the edit page' do
    winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
    visit "/wineries/#{winery.id}"

    click_link("Update Winery")

    expect(current_path).to eq("/wineries/#{winery.id}/edit")
  end

  it 'can edit the winery' do
    winery = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
    visit "/wineries/#{winery.id}"

    expect(page).to have_content('Castello di Amorosa')

    click_link('Update Winery')

    fill_in 'Name', with: 'Johns Shed'
    click_button('Update Winery')

    expect(current_path).to eq("/wineries/#{winery.id}")
    expect(page).to have_content('Johns Shed')
    expect(page).to_not have_content('Castello di Amorosa')
  end
end