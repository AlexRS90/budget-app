require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  include Devise::Test::IntegrationHelpers
  before :each do
    alex = User.create(name: 'Alex Ramos', email: 'alex@gmail.com', password: 'abc123')
    sign_in alex
  end

  scenario 'Check correct navbar title' do
    visit '/categories'
    expect(page).to have_content 'Categories'
  end

  scenario 'Check if add category button exists' do
    visit '/categories'
    expect(page).to have_content 'Add Category'
  end
end
