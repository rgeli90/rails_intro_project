class ChampionStat < ApplicationRecord
  belongs_to :champion

  validates :games_played, presence: true
end
