class Player < ApplicationRecord
  belongs_to :parent
  belongs_to :team
end
