require "test_helper"

class CitytwonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citytwon = citytwons(:one)
  end

  test "should get index" do
    get citytwons_url
    assert_response :success
  end

  test "should get new" do
    get new_citytwon_url
    assert_response :success
  end

  test "should create citytwon" do
    assert_difference("Citytwon.count") do
      post citytwons_url, params: { citytwon: { slug: @citytwon.slug, title: @citytwon.title, user_id: @citytwon.user_id } }
    end

    assert_redirected_to citytwon_url(Citytwon.last)
  end

  test "should show citytwon" do
    get citytwon_url(@citytwon)
    assert_response :success
  end

  test "should get edit" do
    get edit_citytwon_url(@citytwon)
    assert_response :success
  end

  test "should update citytwon" do
    patch citytwon_url(@citytwon), params: { citytwon: { slug: @citytwon.slug, title: @citytwon.title, user_id: @citytwon.user_id } }
    assert_redirected_to citytwon_url(@citytwon)
  end

  test "should destroy citytwon" do
    assert_difference("Citytwon.count", -1) do
      delete citytwon_url(@citytwon)
    end

    assert_redirected_to citytwons_url
  end
end
