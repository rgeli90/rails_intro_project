class LocationsController < ApplicationController
  def index
    @locations = Location.order(:name)
  end

  def show
    @location = Location.find(params[:id])
    @champions = @location.champions
  end

  def search
    @input = params[:query]
    @selected_location = Location.find(params[:location])
    @champions = Champion.where(location_id: @selected_location.id)
    @champions_like = @champions.where("name LIKE ?", "#{@input}%")
  end
end
