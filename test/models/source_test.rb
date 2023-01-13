require "test_helper"

class SourceTest < ActiveSupport::TestCase
  test "should not save source without name" do
    source = Source.new(type: 'salary', amount: 100, frequency: 'monthly')
    assert_not source.save, "Saved the source without a name"
    assert_equal ["can't be blank"], source.errors[:name]
  end

  test "should not save source with invalid type" do
    source = Source.new(name: 'John', type: 'invalid_type', amount: 100, frequency: 'monthly')
    assert_not source.save, "Saved the source with invalid type"
    assert_equal ["is not included in the list"], source.errors[:type]
  end

  test "should not save source without amount" do
    source = Source.new(name: 'John', type: 'salary', frequency: 'monthly')
    assert_not source.save, "Saved the source without an amount"
    assert_equal ["can't be blank"], source.errors[:amount]
  end

  test "should not save source with negative amount" do
    source = Source.new(name: 'John', type: 'salary', amount: -100, frequency: 'monthly')
    assert_not source.save, "Saved the source with a negative amount"
    assert_equal ["must be greater than or equal to 0"], source
  end
end
