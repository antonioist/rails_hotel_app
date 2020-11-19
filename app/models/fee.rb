class Fee < ApplicationRecord
  belongs_to :room_category
  belongs_to :time_block
end
