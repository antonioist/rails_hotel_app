class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(hotel_id: params[:hotel_id])
    if params[:category_id]
      @rooms = @rooms.where(room_category_id: params[:category_id])
    end
    # @rooms = Room.all
  end
end
