class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :nominations
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :votes
  has_many :created_groups, class_name: "Group"
end
