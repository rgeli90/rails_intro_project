class Champion < ApplicationRecord
  has_one :champion_stat
  belongs_to :location
end
