class Room < ApplicationRecord
  belongs_to :room_category
  belongs_to :hotel
end
