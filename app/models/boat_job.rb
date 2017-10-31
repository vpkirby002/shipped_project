class BoatJob < ApplicationRecord
  belongs_to :jobs
  belongs_to :boats
end
