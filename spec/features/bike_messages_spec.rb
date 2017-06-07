require 'rails_helper'

RSpec.feature 'Bike messages', type: :feature do
  scenario 'visiting the root url' do
    visit '/'
    expect(page).to have_content('Bike ID')
  end
end
