require 'rails_helper'

RSpec.describe 'New Category', type: :feature do
  include Devise::Test::IntegrationHelpers
  before :each do
    alex = User.create(name: 'Alex Ramos', email: 'alex@gmail.com', password: 'abc123')
    sign_in alex
  end

  scenario 'Check correct navbar title' do
    visit '/categories/new'
    expect(page).to have_content 'New Category'
  end

  scenario 'Check if form elements exist' do
    visit '/categories/new'
    find('#data_name')
    find('#data_icon')
    expect(page).to be_present
  end
end
