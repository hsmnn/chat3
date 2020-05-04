class Room < ApplicationRecord
    has_many :room_message, dependent: :destroy, inverse_of: :room
end
