require "application_system_test_case"

class NubdRequestsTest < ApplicationSystemTestCase
  setup do
    @nubd_request = nubd_requests(:one)
  end

  test "visiting the index" do
    visit nubd_requests_url
    assert_selector "h1", text: "Nubd requests"
  end

  test "should create nubd request" do
    visit nubd_requests_url
    click_on "New nubd request"

    fill_in "Department", with: @nubd_request.department_id
    fill_in "Email", with: @nubd_request.email
    fill_in "Mobile", with: @nubd_request.mobile
    fill_in "Name", with: @nubd_request.name
    fill_in "Session year", with: @nubd_request.session_year
    fill_in "Subject", with: @nubd_request.subject_id
    fill_in "Txt", with: @nubd_request.txt_id
    check "Type" if @nubd_request.type
    click_on "Create Nubd request"

    assert_text "Nubd request was successfully created"
    click_on "Back"
  end

  test "should update Nubd request" do
    visit nubd_request_url(@nubd_request)
    click_on "Edit this nubd request", match: :first

    fill_in "Department", with: @nubd_request.department_id
    fill_in "Email", with: @nubd_request.email
    fill_in "Mobile", with: @nubd_request.mobile
    fill_in "Name", with: @nubd_request.name
    fill_in "Session year", with: @nubd_request.session_year
    fill_in "Subject", with: @nubd_request.subject_id
    fill_in "Txt", with: @nubd_request.txt_id
    check "Type" if @nubd_request.type
    click_on "Update Nubd request"

    assert_text "Nubd request was successfully updated"
    click_on "Back"
  end

  test "should destroy Nubd request" do
    visit nubd_request_url(@nubd_request)
    click_on "Destroy this nubd request", match: :first

    assert_text "Nubd request was successfully destroyed"
  end
end
