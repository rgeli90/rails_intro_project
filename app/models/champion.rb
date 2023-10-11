class Champion < ApplicationRecord
  validates :name, presense: true
  
  has_one :stat
end
