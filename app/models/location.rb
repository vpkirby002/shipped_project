class Location < ApplicationRecord
	belongs_to :region

	has_many :departing_jobs, class_name: 'Job', foreign_key: :origin_id
	has_many :arriving_jobs, class_name: 'Job', foreign_key: :destination_id
end
