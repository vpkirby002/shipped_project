class Job < ApplicationRecord
	has_many :boat_jobs
	has_many :boats, through: :boat_jobs

	before_destroy :removefk
	private
	def removefk
		boat_jobs.destroy_all
	end
end
