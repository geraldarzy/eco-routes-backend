class TripBook < ApplicationRecord
    belongs_to :user

    has_many :trips
end
