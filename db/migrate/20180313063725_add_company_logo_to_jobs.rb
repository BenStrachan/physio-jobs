class AddCompanyLogoToJobs < ActiveRecord::Migration[5.1]
  def up
    add_attachment :jobs, :company_logo
  end

  def down
    remove_attachment :jobs, :company_logo
  end
end
