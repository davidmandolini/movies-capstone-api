class NominationSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :rating, :runtime, :genre, :director, :plot, :imdb_rating, :metacritic_rating, :poster, :votes, :trailer_url, :youtube_id, :user, :average_rating
  belongs_to :event
  belongs_to :user
  has_many :user_ratings
end
