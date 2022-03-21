class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events
  has_many :nominations, through: :events
  has_many :user_groups
  has_many :users, through: :user_groups
end
