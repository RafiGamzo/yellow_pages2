class Region < ApplicationRecord
  has_many :sightings

  
  validates :title, presence: true,
                    length: { minimum: 5 }
end
