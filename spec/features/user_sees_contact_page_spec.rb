require "rails_helper"

feature "user sees contact page" do
  scenario "user visits contact page" do
    visit '/contact'
    expect(page).to have_title "Contact | Ruby on Rails Tutorial Sample App"
  end
end
