class Event < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {in: 5..20}
	validates :start, presence: true
	validates :end, presence: true
end
