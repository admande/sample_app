require "rails_helper"

feature "user sees home page" do
  scenario "user visits home page" do
    visit '/static_pages/home'
    expect(page).to have_content "This is the home page for the Ruby on Rails"
  end
end
