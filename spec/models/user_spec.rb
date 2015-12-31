require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it "has a name" do
    expect(FactoryGirl.build(:user, name: nil)).to_not be_valid
  end

  it "limits name length to 50 characters" do
    @name = "A" * 51
    expect(FactoryGirl.build(:user, name: @name)).to_not be_valid
  end

  it "has an email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end

  it "limits email length to 255 characters" do
    @email = "A" * 256
    expect(FactoryGirl.build(:user, email: @email)).to_not be_valid
  end

  it "an invalid email to not create a new object" do
    expect(FactoryGirl.build(:user, email: "t@k,com")).to_not be_valid
  end

  it "a valid email should create a new object" do
    expect(FactoryGirl.build(:user, email: "t@k.com")).to be_valid
  end

  it "should have a unique email address" do
    expect(FactoryGirl.create(:user)).to be_valid
    expect(FactoryGirl.build(:user)).to_not be_valid
  end

  it "should have unique case insensitive email address" do
    expect(FactoryGirl.create(:user)).to be_valid
    expect(FactoryGirl.build(:user, email: "ADAM@GMAIL.COM")).to_not be_valid    
  end
end
