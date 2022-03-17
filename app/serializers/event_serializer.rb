class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date
  belongs_to :group
  has_many :nominations
end
