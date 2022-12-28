require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "JWT is included in request" do
    user = users(:one)
    token = create_jwt(user)
  
    get :index, headers: { 'Authorization': "Bearer #{token}" }
    assert_response :success
  end
end
