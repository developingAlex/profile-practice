json.extract! profile, :id, :first_name, :last_name, :location, :hobbies, :banner_image_data, :profile_image_data, :user_id, :follower_count, :created_at, :updated_at
json.url profile_url(profile, format: :json)
