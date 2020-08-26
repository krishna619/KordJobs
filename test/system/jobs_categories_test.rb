require "application_system_test_case"

class JobsCategoriesTest < ApplicationSystemTestCase
  setup do
    @jobs_category = jobs_categories(:one)
  end

  test "visiting the index" do
    visit jobs_categories_url
    assert_selector "h1", text: "Jobs Categories"
  end

  test "creating a Jobs category" do
    visit jobs_categories_url
    click_on "New Jobs Category"

    fill_in "Job", with: @jobs_category.job_id
    fill_in "Location", with: @jobs_category.location_id
    click_on "Create Jobs category"

    assert_text "Jobs category was successfully created"
    click_on "Back"
  end

  test "updating a Jobs category" do
    visit jobs_categories_url
    click_on "Edit", match: :first

    fill_in "Job", with: @jobs_category.job_id
    fill_in "Location", with: @jobs_category.location_id
    click_on "Update Jobs category"

    assert_text "Jobs category was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobs category" do
    visit jobs_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobs category was successfully destroyed"
  end
end
