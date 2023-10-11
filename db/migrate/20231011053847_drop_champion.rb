class DropChampion < ActiveRecord::Migration[7.0]
  def change
    drop_table :champions
  end
end
