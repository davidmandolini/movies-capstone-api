class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :nominations
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :votes
  has_many :created_groups, class_name: "Group"
  has_many :user_ratings
end
