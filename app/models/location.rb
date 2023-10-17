class Location < ApplicationRecord
  has_many :champion

  validates :name, presence: true
end
