class Room < ApplicationRecord
    has_many :room_message, dependant: :destroy, inverse_of: :room
end
