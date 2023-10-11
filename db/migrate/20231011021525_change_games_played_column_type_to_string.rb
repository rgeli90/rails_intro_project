class ChangeGamesPlayedColumnTypeToString < ActiveRecord::Migration[7.0]
  def change
    change_column :stats, :games_played, :string
  end
end
