require "application_system_test_case"

class ViewsTest < ApplicationSystemTestCase
  setup do
    @view = views(:one)
  end

  test "visiting the index" do
    visit views_url
    assert_selector "h1", text: "Views"
  end

  test "creating a View" do
    visit views_url
    click_on "New View"

    fill_in "Movies", with: @view.movies_id
    fill_in "User", with: @view.user_id
    click_on "Create View"

    assert_text "View was successfully created"
    click_on "Back"
  end

  test "updating a View" do
    visit views_url
    click_on "Edit", match: :first

    fill_in "Movies", with: @view.movies_id
    fill_in "User", with: @view.user_id
    click_on "Update View"

    assert_text "View was successfully updated"
    click_on "Back"
  end

  test "destroying a View" do
    visit views_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "View was successfully destroyed"
  end
end
