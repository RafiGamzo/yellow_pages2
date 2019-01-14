class Species < ApplicationRecord
  validates :name, :presence => true

  has_many :sightings
end
