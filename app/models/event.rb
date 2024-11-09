class Event < ApplicationRecord
    has_many :bookings
    belongs_to :creator, class_name: 'User'
    has_many :attendees, through: :bookings
end
