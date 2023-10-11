class CreateChampionStats < ActiveRecord::Migration[7.0]
  def change
    create_table :champion_stats do |t|
      t.string :games_played
      t.string :kda
      t.float :win_rate
      t.float :pick_rate
      t.float :ban_rate
      t.integer :gold
      t.references :champion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
