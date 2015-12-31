require "rails_helper"

feature "user sees about page" do
  scenario "user visits about page" do
    visit '/about'
    expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
  end
end
