require 'rails_helper'

RSpec.feature "HomePage", type: :feature do
  scenario 'Agilegram is on the homepage' do
    visit '/'
    expect(page).to have_content "Agilegram"
    expect(page).to have_content "Click to sign up for an Agilegram account"
    expect(page).to have_link "Sign Up"
    expect(page).to have_link "Login"
  end
end 