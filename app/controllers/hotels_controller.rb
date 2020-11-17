class HotelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @hotels = Hotel.all
  end
end
