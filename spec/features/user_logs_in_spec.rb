require "rails_helper"

feature "user logs in" do

  scenario "user unsuccessfully logs in" do
    visit 'login'

    fill_in "Email", with: "adam@gmail.com"
    fill_in "Password", with: ""
    click_button "Log in"

    expect(page).to have_content("Invalid email/password combination")

    visit '/'
    expect(page).to_not have_content("Invalid email/password combination")
  end
end
