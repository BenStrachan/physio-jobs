class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :job_reply_email
      t.string :job_title
      t.string :job_location
      t.string :job_type
      t.string :job_category
      t.string :job_tags
      t.string :job_description
      t.string :job_application_url
      t.integer :minimum_hourly_rate
      t.integer :maximum_hourly_rate
      t.integer :minimum_salary
      t.integer :maximum_salary
      t.integer :hours_per_week
      t.string :company_details
      t.string :company_website
      t.string :company_video
      t.string :company_tagline

      t.timestamps
    end
  end
end
