require 'test_helper'

class JobsCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobs_category = jobs_categories(:one)
  end

  test "should get index" do
    get jobs_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_jobs_category_url
    assert_response :success
  end

  test "should create jobs_category" do
    assert_difference('JobsCategory.count') do
      post jobs_categories_url, params: { jobs_category: { job_id: @jobs_category.job_id, location_id: @jobs_category.location_id } }
    end

    assert_redirected_to jobs_category_url(JobsCategory.last)
  end

  test "should show jobs_category" do
    get jobs_category_url(@jobs_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobs_category_url(@jobs_category)
    assert_response :success
  end

  test "should update jobs_category" do
    patch jobs_category_url(@jobs_category), params: { jobs_category: { job_id: @jobs_category.job_id, location_id: @jobs_category.location_id } }
    assert_redirected_to jobs_category_url(@jobs_category)
  end

  test "should destroy jobs_category" do
    assert_difference('JobsCategory.count', -1) do
      delete jobs_category_url(@jobs_category)
    end

    assert_redirected_to jobs_categories_url
  end
end
