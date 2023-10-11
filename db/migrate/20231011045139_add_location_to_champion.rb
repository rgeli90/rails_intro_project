class AddLocationToChampion < ActiveRecord::Migration[7.0]
  def change
    add_reference :champions, :location
  end
end
