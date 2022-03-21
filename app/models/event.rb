class Event < ApplicationRecord
  belongs_to :group
  has_many :nominations
  belongs_to :user

  def top_nomination
    if nominations.length > 0
      list = nominations.sort { |a, b| b.votes.count <=> a.votes.count }
      return list[0]
    else
      return ""
    end
  end

  def format_date
    return date.strftime("%m/%d/%Y")
  end
end
