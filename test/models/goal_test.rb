require "test_helper"

class GoalTest < ActiveSupport::TestCase
  test "should not save goal without name" do
    goal = Goal.new(amount: 100, due_date: Date.today)
    assert_not goal.save, "Saved the goal without a name"
    assert_equal ["can't be blank"], goal.errors[:name]
  end

  test "should not save goal without amount" do
    goal = Goal.new(name: 'Goal', due_date: Date.today)
    assert_not goal.save, "Saved the goal without an amount"
    assert_equal ["can't be blank"], goal.errors[:amount]
  end
end
