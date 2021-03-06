class Boat < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs
  has_many :jobs, through: :boat_jobs
  belongs_to :region


  validates :bname, uniqueness: true

	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
