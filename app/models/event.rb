class Event < ApplicationRecord
	belongs_to :user
	has_many :events
	validates :title, presence: true, length: {in: 5..20}
	validates :start, presence: true
	validates :end, presence: true
end
