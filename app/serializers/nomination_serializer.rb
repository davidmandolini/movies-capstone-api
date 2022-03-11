class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :trailer_url, :poster, :votes, :event_id
end
