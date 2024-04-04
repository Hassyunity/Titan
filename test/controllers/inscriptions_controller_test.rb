require "test_helper"

class InscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inscriptions_new_url
    assert_response :success
  end
end
