class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :trailer_url, :poster
  belongs_to :event
end
