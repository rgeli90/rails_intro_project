class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.integer :games_played
      t.float :kda
      t.float :win_rate
      t.float :pick_rate
      t.float :ban_rate
      t.float :cs
      t.integer :gold

      t.timestamps
    end
  end
end
