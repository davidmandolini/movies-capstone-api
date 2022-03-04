class EventSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :group
  has_many :nominations
end
