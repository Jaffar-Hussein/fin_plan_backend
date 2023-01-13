require "test_helper"

class RetirementTest < ActiveSupport::TestCase
  test "should not save retirement without years" do
    retirement = Retirement.new(amount_so_far: 100, goal: 200, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement without years"
  end

  test "should not save retirement with negative years" do
    retirement = Retirement.new(years: -10, amount_so_far: 100, goal: 200, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement with negative years"
  end

  test "should not save retirement without amount_so_far" do
    retirement = Retirement.new(years: 10, goal: 200, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement without amount_so_far"
  end

  test "should not save retirement with negative amount_so_far" do
    retirement = Retirement.new(years: 10, amount_so_far: -100, goal: 200, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement with negative amount_so_far"
  end

  test "should not save retirement without goal" do
    retirement = Retirement.new(years: 10, amount_so_far: 100, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement without goal"
  end

  test "should not save retirement with zero goal" do
    retirement = Retirement.new(years: 10, amount_so_far: 100, goal: 0, sources: 'Salary')
    assert_not retirement.save, "Saved the retirement with zero goal"
  end

  test "should not save retirement without sources" do
    retirement = Retirement.new(years: 10, amount_so_far: 100, goal: 200)
    assert_not retirement.save, "Saved the retirement without sources"
  end
end
