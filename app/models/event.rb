class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances
	validates :start_date, presence: true 
	validates :duration, presence: true
	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 }
	validates :price , presence: true, numericality: {less_than_or_equal_to: 1000}
	validates :location, presence: true
	belongs_to :user

end
