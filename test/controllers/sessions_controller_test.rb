require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
 # test/controllers/sessions_controller_test.rb

test "login with valid credentials" do
  user = users(:one)
  post :create, params: { email: user.email, password: "password" }
  assert_response :redirect
  assert_redirected_to dashboard_path
  assert_equal user.id, session[:user_id]
end

test "login with invalid credentials" do
  post :create, params: { email: "invalid@example.com", password: "invalid" }
  assert_response :redirect
  assert_redirected_to login_path
  assert_nil session[:user_id]
end

test "register with valid params" do
  assert_difference "User.count", 1 do
    post :register, params: {
      firstname: "firstname", 
      secondname: "secondname",
      email: "newuser@example.com",
      password: "password",
    }
  end
  assert_response :redirect
  assert_redirected_to dashboard_path
  assert_equal User.last.id, session[:user_id]
end

test "register with invalid params" do
  assert_no_difference "User.count" do
    post :register, params: {
      firstname: "", 
      secondname: "",
      email: "",
      password: "",
    }
  end
end
