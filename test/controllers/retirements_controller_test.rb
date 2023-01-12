require "test_helper"

class RetirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retirement = retirements(:one)
  end

  test "should get index" do
    get retirements_url
    assert_response :success
  end

  test "should get new" do
    get new_retirement_url
    assert_response :success
  end

  test "should create retirement" do
    assert_difference('Retirement.count') do
      post retirements_url, params: { retirement: { years: @retirement.years, amount_so_far: @retirement.amount_so_far, goal: @retirement.goal, sources: @retirement.sources } }
    end

    assert_redirected_to retirement_url(Retirement.last)
  end

  test "should show retirement" do
    get retirement_url(@retirement)
    assert_response :success
  end

  test "should get edit" do
    get edit
  end
  
end
