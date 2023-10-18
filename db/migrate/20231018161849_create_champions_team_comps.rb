class CreateChampionsTeamComps < ActiveRecord::Migration[7.0]
  def change
    create_table :champions_team_comps do |t|
      t.references :champion, null: false, foreign_key: true
      t.references :team_comp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
