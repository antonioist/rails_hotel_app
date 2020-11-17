class HotelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @hotels = Hotel.all
  end

  def show
    @room_categories = RoomCategory.all
    @hotel = Hotel.find(params[:id])
  end
end
