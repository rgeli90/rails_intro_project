class RemoveStatsIdFromChampionTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :champions, :stats_id, :integer
  end
end
