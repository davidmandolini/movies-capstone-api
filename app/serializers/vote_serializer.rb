class VoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  belongs_to :nomination
end
