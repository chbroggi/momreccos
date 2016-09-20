class Team < ApplicationRecord
  belongs_to :club
  has_many :coaches
  has_many :players
  has_many :events
end
