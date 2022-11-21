require "application_system_test_case"

class CitytwonsTest < ApplicationSystemTestCase
  setup do
    @citytwon = citytwons(:one)
  end

  test "visiting the index" do
    visit citytwons_url
    assert_selector "h1", text: "Citytwons"
  end

  test "should create citytwon" do
    visit citytwons_url
    click_on "New citytwon"

    fill_in "Slug", with: @citytwon.slug
    fill_in "Title", with: @citytwon.title
    fill_in "User", with: @citytwon.user_id
    click_on "Create Citytwon"

    assert_text "Citytwon was successfully created"
    click_on "Back"
  end

  test "should update Citytwon" do
    visit citytwon_url(@citytwon)
    click_on "Edit this citytwon", match: :first

    fill_in "Slug", with: @citytwon.slug
    fill_in "Title", with: @citytwon.title
    fill_in "User", with: @citytwon.user_id
    click_on "Update Citytwon"

    assert_text "Citytwon was successfully updated"
    click_on "Back"
  end

  test "should destroy Citytwon" do
    visit citytwon_url(@citytwon)
    click_on "Destroy this citytwon", match: :first

    assert_text "Citytwon was successfully destroyed"
  end
end
