# == Schema Information
#
# Table name: jobs
#
#  id                        :integer          not null, primary key
#  job_reply_email           :string
#  job_title                 :string
#  job_location              :string
#  job_type                  :string
#  job_category              :string
#  job_tags                  :string
#  job_description           :string
#  job_application_url       :string
#  minimum_hourly_rate       :integer
#  maximum_hourly_rate       :integer
#  minimum_salary            :integer
#  maximum_salary            :integer
#  hours_per_week            :integer
#  company_details           :string
#  company_website           :string
#  company_video             :string
#  company_tagline           :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  company_logo_file_name    :string
#  company_logo_content_type :string
#  company_logo_file_size    :integer
#  company_logo_updated_at   :datetime
#

class Job < ApplicationRecord
  geocoded_by :job_location
  after_validation :geocode


  has_attached_file :company_logo,
                    styles: {
                      medium: "300x300>"
                    }

  validates_attachment_content_type :company_logo, content_type: /\Aimage\/.*\z/
end
