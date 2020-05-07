class RoomMessage < ApplicationRecord
  belongs_to :room, inverse_of: :room_messages
  belongs_to :user

  def as_json(options)
    super(options).merge(user_avatar_url: user.gravatar_url)
  ende are going to add some data in the room page in order to use them via Javascript to subscribe to the appropriate stre
end
