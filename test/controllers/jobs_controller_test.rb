require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { company_details: @job.company_details, company_tagline: @job.company_tagline, company_video: @job.company_video, company_website: @job.company_website, hours_per_week: @job.hours_per_week, job_application_url: @job.job_application_url, job_category: @job.job_category, job_description: @job.job_description, job_location: @job.job_location, job_reply_email: @job.job_reply_email, job_tags: @job.job_tags, job_title: @job.job_title, job_type: @job.job_type, maximum_hourly_rate: @job.maximum_hourly_rate, maximum_salary: @job.maximum_salary, minimum_hourly_rate: @job.minimum_hourly_rate, minimum_salary: @job.minimum_salary } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { company_details: @job.company_details, company_tagline: @job.company_tagline, company_video: @job.company_video, company_website: @job.company_website, hours_per_week: @job.hours_per_week, job_application_url: @job.job_application_url, job_category: @job.job_category, job_description: @job.job_description, job_location: @job.job_location, job_reply_email: @job.job_reply_email, job_tags: @job.job_tags, job_title: @job.job_title, job_type: @job.job_type, maximum_hourly_rate: @job.maximum_hourly_rate, maximum_salary: @job.maximum_salary, minimum_hourly_rate: @job.minimum_hourly_rate, minimum_salary: @job.minimum_salary } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
