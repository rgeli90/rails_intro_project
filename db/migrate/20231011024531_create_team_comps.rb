class CreateTeamComps < ActiveRecord::Migration[7.0]
  def change
    create_table :team_comps do |t|
      t.references :champion_one, null: false, foreign_key: true
      t.references :champion_two, null: false, foreign_key: true
      t.references :champion_three, null: false, foreign_key: true
      t.references :champion_four, null: false, foreign_key: true
      t.references :champion_five, null: false, foreign_key: true

      t.timestamps
    end
  end
end
