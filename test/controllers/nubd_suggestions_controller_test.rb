require "test_helper"

class NubdSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nubd_suggestion = nubd_suggestions(:one)
  end

  test "should get index" do
    get nubd_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_nubd_suggestion_url
    assert_response :success
  end

  test "should create nubd_suggestion" do
    assert_difference("NubdSuggestion.count") do
      post nubd_suggestions_url, params: { nubd_suggestion: { department_id: @nubd_suggestion.department_id, subject_id: @nubd_suggestion.subject_id, year: @nubd_suggestion.year } }
    end

    assert_redirected_to nubd_suggestion_url(NubdSuggestion.last)
  end

  test "should show nubd_suggestion" do
    get nubd_suggestion_url(@nubd_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_nubd_suggestion_url(@nubd_suggestion)
    assert_response :success
  end

  test "should update nubd_suggestion" do
    patch nubd_suggestion_url(@nubd_suggestion), params: { nubd_suggestion: { department_id: @nubd_suggestion.department_id, subject_id: @nubd_suggestion.subject_id, year: @nubd_suggestion.year } }
    assert_redirected_to nubd_suggestion_url(@nubd_suggestion)
  end

  test "should destroy nubd_suggestion" do
    assert_difference("NubdSuggestion.count", -1) do
      delete nubd_suggestion_url(@nubd_suggestion)
    end

    assert_redirected_to nubd_suggestions_url
  end
end
