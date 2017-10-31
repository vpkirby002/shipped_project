class Job < ApplicationRecord
	belongs_to :boat
	has_many :boats, through: :boat_jobs
end
