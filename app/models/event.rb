class Event < ApplicationRecord
  belongs_to :group
  belongs_to :theme, optional: true
  has_many :nominations
  belongs_to :user
end
