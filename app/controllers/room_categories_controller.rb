class RoomCategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @room_categories = RoomCategory.all
  end
end
