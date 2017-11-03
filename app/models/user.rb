class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :boats
  has_many :boat_jobs, through: :boats, source: :jobs
  has_many :jobs, through: :boat_jobs

  validates :email, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
