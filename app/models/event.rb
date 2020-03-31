class Event < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {in: 5..20}
end
