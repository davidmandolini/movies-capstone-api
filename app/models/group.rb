class Group < ApplicationRecord
  has_many :events
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :nominations, through: :events
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
end
