class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :top_nomination, :status, :format_date
  belongs_to :group
  has_many :nominations
end
