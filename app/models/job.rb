class Job < ApplicationRecord
	has_many :boat_jobs
	has_many :boats, through: :boat_jobs
	has_many :locations, through: :regions
	belongs_to :origin, class_name: 'Location'
	belongs_to :destination, class_name: 'Location'

	validates :jname, presence: true 
	validates :description, presence: true 
	validates :origin, presence: true 
	validates :destination, presence: true 
	validates :containers, presence: true 
	validates :cost, presence: true 

	validates :jname, uniqueness: true

	validates :cost, numericality: true
	validates :cost, numericality: {greater_than_or_equal_to: 1000}

	validates_length_of :description, :minimum => 50

	before_destroy :removefk
	private
	def removefk
		boat_jobs.destroy_all
	end
end
