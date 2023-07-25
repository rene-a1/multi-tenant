require "test_helper"

class TenantControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tenant_create_url
    assert_response :success
  end
end
