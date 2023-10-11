class AddCompNameToTeamComps < ActiveRecord::Migration[7.0]
  def change
    add_column :team_comps, :comp_name, :string
  end
end
