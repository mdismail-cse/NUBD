require "application_system_test_case"

class NubdSuggestionsTest < ApplicationSystemTestCase
  setup do
    @nubd_suggestion = nubd_suggestions(:one)
  end

  test "visiting the index" do
    visit nubd_suggestions_url
    assert_selector "h1", text: "Nubd suggestions"
  end

  test "should create nubd suggestion" do
    visit nubd_suggestions_url
    click_on "New nubd suggestion"

    fill_in "Department", with: @nubd_suggestion.department_id
    fill_in "Subject", with: @nubd_suggestion.subject_id
    fill_in "Year", with: @nubd_suggestion.year
    click_on "Create Nubd suggestion"

    assert_text "Nubd suggestion was successfully created"
    click_on "Back"
  end

  test "should update Nubd suggestion" do
    visit nubd_suggestion_url(@nubd_suggestion)
    click_on "Edit this nubd suggestion", match: :first

    fill_in "Department", with: @nubd_suggestion.department_id
    fill_in "Subject", with: @nubd_suggestion.subject_id
    fill_in "Year", with: @nubd_suggestion.year
    click_on "Update Nubd suggestion"

    assert_text "Nubd suggestion was successfully updated"
    click_on "Back"
  end

  test "should destroy Nubd suggestion" do
    visit nubd_suggestion_url(@nubd_suggestion)
    click_on "Destroy this nubd suggestion", match: :first

    assert_text "Nubd suggestion was successfully destroyed"
  end
end
