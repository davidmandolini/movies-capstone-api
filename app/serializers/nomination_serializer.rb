class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :rating, :runtime, :genre, :director, :plot, :imdb_rating, :metacritic_rating, :poster, :votes, :trailer_url, :youtube_id
  belongs_to :event
end
