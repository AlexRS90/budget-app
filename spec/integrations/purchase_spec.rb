require 'rails_helper'

RSpec.describe 'New Category', type: :feature do
  include Devise::Test::IntegrationHelpers
  before :each do
    alex = User.create(name: 'Alex Ramos', email: 'alex@gmail.com', password: 'abc123')
    sign_in alex
    Group.create(id: 1, name: 'School', icon: 'school.png', user_id: alex.id)
  end

  scenario 'Check correct navbar title' do
    visit '/categories/1/management/new'
    expect(page).to have_content 'New Purchase'
  end

  scenario 'Check if Form elements exist' do
    visit '/categories/1/management/new'
    find('#data_name')
    find('#data_amount')
    expect(page).to be_present
  end
end
