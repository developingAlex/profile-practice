class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :follower_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :user, presence: true
end
