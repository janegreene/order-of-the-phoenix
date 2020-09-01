require 'rails_helper'

RSpec.feature 'user can search for order of the phoenix members by house' do
  it "and return details " do
    visit '/'
    select 'Gryffindor', from: 'house'
    click_on "Search For Members"
    expect(current_path).to eq(search_path)

    expect(page).to have_content("There are 21 members of the Order of the Phoenix")
    expect(page).to have_css('.member', count: 21)
    within(first('.member')) do
        expect(page).to have_css('.role')
        expect(page).to have_css('.patronus')

        expect(page).to have_css('.name')
        name = find('.name').text
        expect(name).not_to be_empty

        expect(page).to have_css('.house')
        house = find('.house').text
        expect(house).not_to be_empty
    end
  end
end
