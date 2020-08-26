class Job < ApplicationRecord
  has_many :jobs_category

  validates :location, :job_type
end
