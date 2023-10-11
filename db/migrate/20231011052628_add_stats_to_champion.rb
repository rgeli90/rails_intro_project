class AddStatsToChampion < ActiveRecord::Migration[7.0]
  def change
    add_reference :champions, :stat, foreign_key: true
  end
end
