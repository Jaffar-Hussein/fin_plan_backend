require "test_helper"

class DebtTest < ActiveSupport::TestCase
  test "should not save debt without name" do
    debt = Debt.new(amount: 100, date: Date.today, status: 'unpaid')
    assert_not debt.save, "Saved the debt without a name"
  end

  test "should not save debt without amount" do
    debt = Debt.new(name: 'John', date: Date.today, status: 'unpaid')
    assert_not debt.save, "Saved the debt without an amount"
  end

  test "should not save debt with negative amount" do
    debt = Debt.new(name: 'John', amount: -100, date: Date.today, status: 'unpaid')
    assert_not debt.save, "Saved the debt with a negative amount"
  end

  test "should not save debt without date" do
    debt = Debt.new(name: 'John', amount: 100, status: 'unpaid')
    assert_not debt.\
  end
end
