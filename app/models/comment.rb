class Comment < ApplicationRecord
  belongs_to :event
  validates :description, presence: true
end
