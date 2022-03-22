class UserRatingSerializer < ActiveModel::Serializer
  attributes :id, :value
  belongs_to :user
  belongs_to :nomination
end
