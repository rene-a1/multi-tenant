require "test_helper"

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get resources_show_url
    assert_response :success
  end
end
