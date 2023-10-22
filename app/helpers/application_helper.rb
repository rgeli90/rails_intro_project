module ApplicationHelper
  def location_dropdown
    Location.order(:name).map { |location| [location.name, location.id] }
  end
end
