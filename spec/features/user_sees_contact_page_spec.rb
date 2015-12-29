require "rails_helper"

feature "user sees contact page" do
  scenario "user visits contact page" do
    visit '/static_pages/contact'
    expect(page).to have_title "Contact | Ruby on Rails Tutorial Sample App"
  end
end
