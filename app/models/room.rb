class Room < ApplicationRecord
  belongs_to :room_category
  belongs_to :hotel
  rails_admin do
    # label I18n.t('label.room.name')
    list do
      exclude_fields :created_at, :updated_at
    end
  end
end
