require "test_helper"

class FavoriteFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favorite_foods_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_foods_destroy_url
    assert_response :success
  end
end
