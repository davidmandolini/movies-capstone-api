class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :rating, :runtime, :genre, :director, :plot, :imdb_rating, :metacritic_rating, :poster, :votes, :event_id, :trailer_url
end
