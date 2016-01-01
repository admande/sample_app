require "rails_helper"

feature "user signs up" do

  scenario "user unsuccessfully signs up" do
    visit 'signup'

    fill_in "Name", with: ""
    fill_in "Email", with: "1"
    fill_in "Password", with: ""
    fill_in "Confirmation", with: ""
    click_button "Create my account"

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Email is invalid")
    expect(page).to have_content("Password can't be blank")
    expect(page).to have_content("Password is too short (minimum is 6 characters)")
    expect(page).to have_field("Email", with: "1")
  end

  scenario "user successfully signs up" do
    visit 'signup'

    fill_in "Name", with: "John"
    fill_in "Email", with: "john@bryan.com"
    fill_in "Password", with: "asdfio323"
    fill_in "Confirmation", with: "asdfio323"
    click_button "Create my account"

    expect(page).to have_content("John")
    expect(page).to have_css('img')
    expect(page).to have_content("Welcome to the Sample App!")
  end
end
