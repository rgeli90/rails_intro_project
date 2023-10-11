class AddCsColumnToChampionStat < ActiveRecord::Migration[7.0]
  def change
    add_column :champion_stats, :cs, :float
  end
end
