class Unit < ApplicationRecord
  has_many :rosterunits
  has_many :rosters, through: :rosterunits
end
