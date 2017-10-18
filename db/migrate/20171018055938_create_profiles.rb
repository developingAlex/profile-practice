class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.text :hobbies
      t.text :banner_image_data
      t.text :profile_image_data
      t.references :user, foreign_key: true
      t.integer :follower_count

      t.timestamps
    end
  end
end
