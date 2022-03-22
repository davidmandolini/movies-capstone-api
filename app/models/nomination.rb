class Nomination < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :votes
  has_many :user_ratings

  def youtube_id
    if trailer_url
      id = trailer_url.delete_prefix("https://www.youtube.com/watch?v=")
      return id
    end
  end
end

def average_rating
  result = 0.0
  if user_ratings
    user_ratings.each do |rating|
      result += rating.value
    end
    result = result / user_ratings.length
    result = result.round(1)
  end
  return result
end
