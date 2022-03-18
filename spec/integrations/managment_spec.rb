require 'rails_helper'

RSpec.describe 'New Category', type: :feature do
  include Devise::Test::IntegrationHelpers
  before :each do
    alex = User.create(name: 'Alex Ramos', email: 'alex@gmail.com', password: 'abc123')
    sign_in alex
    Group.create(id: 1, name: 'School', icon: 'school.png', user_id: alex.id)
  end

  scenario 'Check correct navbar title' do
    visit '/categories/1/management'
    expect(page).to have_content 'Wasted Money'
  end

  scenario 'Check if Purchase button exists' do
    visit '/categories/1/management'
    expect(page).to have_content 'Purchase'
  end
end