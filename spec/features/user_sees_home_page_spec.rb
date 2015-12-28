require "rails_helper"

feature "user sees home page" do
  scenario "user visits home page" do
    visit '/'
    expect(page).to have_content "This is the home page for the Ruby on Rails"
    expect(page).to have_title "Ruby on Rails Tutorial Sample App"
  end
end
