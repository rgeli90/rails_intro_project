class TeamComp < ApplicationRecord
  validates :comp_name, presence: true, uniqueness: true

  belongs_to :champion_one
  belongs_to :champion_two
  belongs_to :champion_three
  belongs_to :champion_four
  belongs_to :champion_five
end
