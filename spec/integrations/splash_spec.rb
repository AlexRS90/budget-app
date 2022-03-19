require 'rails_helper'

RSpec.describe 'Splash view', type: :feature do
  scenario 'Welcome page, user should see app name and links' do
    visit '/'
    expect(page).to have_content 'Money Manage App'
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Sign up'
  end
end
