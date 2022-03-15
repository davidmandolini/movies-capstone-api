class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :rating, :runtime, :genre, :director, :plot, :imdb_rating, :metacritic_rating, :trailer_url, :poster, :votes, :event_id
end
