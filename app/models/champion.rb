class Champion < ApplicationRecord
  has_one :champion_stat
  belongs_to :location
  has_and_belongs_to_many :team_comps

  validates :name, presence: true, uniqueness: true
end
