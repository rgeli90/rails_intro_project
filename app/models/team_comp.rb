class TeamComp < ApplicationRecord
  validates :comp_name, presence: true, uniqueness: true
  has_and_belongs_to_many :champions
end
