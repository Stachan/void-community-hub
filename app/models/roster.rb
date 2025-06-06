class Roster < ApplicationRecord
  has_many :rosterunits
  has_many :units, through: :rosterunits
end
