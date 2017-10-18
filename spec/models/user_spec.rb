require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have important fields" do
    # Important fields are email, password and password_confirmation
    u = User.create!(email: 'u2@u.com', password: 'password', password_confirmation: 'password')
    expect(u).to be_valid
  end

  it "should have an email" do
    # Important fields are email, password and password_confirmation
    u = User.create!(email: 'u2@u.com', password: 'password', password_confirmation: 'password')
    u.email = ''
    expect(u).to be_invalid
  end

  it "should have a password" do
    # Important fields are email, password and password_confirmation
    u = User.create!(email: 'u2@u.com', password: 'password', password_confirmation: 'password')
    u.password = ''
    expect(u).to be_invalid
  end

  it "should have a password_confirmation" do
    # Important fields are email, password and password_confirmation
    u = User.create!(email: 'u2@u.com', password: 'password', password_confirmation: 'password')
    u.password_confirmation = ''
    expect(u).to be_invalid
  end
end
