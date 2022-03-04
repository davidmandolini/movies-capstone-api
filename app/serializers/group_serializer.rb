class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events
  has_many :nominations, through: :events
end
