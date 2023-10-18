class Location < ApplicationRecord
  has_many :champions

  validates :name, presence: true
end
