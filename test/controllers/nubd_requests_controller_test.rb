require "test_helper"

class NubdRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nubd_request = nubd_requests(:one)
  end

  test "should get index" do
    get nubd_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_nubd_request_url
    assert_response :success
  end

  test "should create nubd_request" do
    assert_difference("NubdRequest.count") do
      post nubd_requests_url, params: { nubd_request: { department_id: @nubd_request.department_id, email: @nubd_request.email, mobile: @nubd_request.mobile, name: @nubd_request.name, session_year: @nubd_request.session_year, subject_id: @nubd_request.subject_id, txt_id: @nubd_request.txt_id, type: @nubd_request.type } }
    end

    assert_redirected_to nubd_request_url(NubdRequest.last)
  end

  test "should show nubd_request" do
    get nubd_request_url(@nubd_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_nubd_request_url(@nubd_request)
    assert_response :success
  end

  test "should update nubd_request" do
    patch nubd_request_url(@nubd_request), params: { nubd_request: { department_id: @nubd_request.department_id, email: @nubd_request.email, mobile: @nubd_request.mobile, name: @nubd_request.name, session_year: @nubd_request.session_year, subject_id: @nubd_request.subject_id, txt_id: @nubd_request.txt_id, type: @nubd_request.type } }
    assert_redirected_to nubd_request_url(@nubd_request)
  end

  test "should destroy nubd_request" do
    assert_difference("NubdRequest.count", -1) do
      delete nubd_request_url(@nubd_request)
    end

    assert_redirected_to nubd_requests_url
  end
end
