require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :location => "MyString",
      :hobbies => "MyText",
      :banner_image_data => "MyText",
      :profile_image_data => "MyText",
      :user => nil,
      :follower_count => 1
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[location]"

      assert_select "textarea[name=?]", "profile[hobbies]"

      assert_select "textarea[name=?]", "profile[banner_image_data]"

      assert_select "textarea[name=?]", "profile[profile_image_data]"

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[follower_count]"
    end
  end
end
