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
