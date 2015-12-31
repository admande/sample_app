require "rails_helper"

feature "user sees help page" do
  scenario "user visits help page" do
    visit '/help'
    expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
  end
end
