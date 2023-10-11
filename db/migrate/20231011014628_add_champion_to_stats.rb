class AddChampionToStats < ActiveRecord::Migration[7.0]
  def change
    add_reference :stat, :champion, null: false, foreign_key: true
  end
end
