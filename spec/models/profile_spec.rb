require 'rails_helper'

RSpec.describe Profile, type: :model do
  it "should have important fields present and a user" do
    # Important fields are: first_name, last_name, location
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    expect(p).to be_valid
  end

  it "should have a first_name" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.first_name = ''
    expect(p).to be_invalid
  end

  it "should have a last_name" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.last_name = ''
    expect(p).to be_invalid
  end

  it "should have a location" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.location = ''
    expect(p).to be_invalid
  end

  it "should have a user" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.user = nil
    expect(p).to be_invalid
  end

  it "should have 0 or above for follower_count" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.follower_count = -1
    expect(p).to be_invalid
  end

  it "should have 0 or above for follower_count" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.follower_count = 8
    expect(p).to be_valid
  end

  it "should have an integer as the follower_count" do
    u = User.new()
    p = Profile.new(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: u)
    p.follower_count = 8.5
    expect(p).to be_invalid
  end
end
