class LocationsController < ApplicationController
  def index
    @locations = Location.order(:name)
  end

  def show
    @location = Location.find(params[:id])
    @champions = @location.champions.order(:name)
  end

  def search
    @input = params[:query]
    @selected_location = Location.find_by(id: params[:location]) # Use find_by to avoid raising an exception if the location is not found

    if params[:query].present?
      if @selected_location.present?
        # Both query and location are present
        @champions_like = Champion.where(location_id: @selected_location.id)
                                  .where("name LIKE ?",
                                         "#{@input}%").order(:name)
                                  .page(params[:page]).per(10)
      else
        # Query is present, but no location selected
        @champions_like = Champion.where("name LIKE ?",
                                         "#{@input}%").order(:name).page(params[:page]).per(10)
      end
    else
      @champions_like = if @selected_location.present?
                          # Query is not present, but a location is selected
                          Champion.where(location_id: @selected_location.id).order(:name).page(params[:page]).per(10)
                        end
    end
  end
end
