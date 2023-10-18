class LocationsController < ApplicationController
  def index
    @locations = Location.order(:name)
  end

  def show
    @location = Location.find(params[:id])
    @champions = @location.champions
  end
end
