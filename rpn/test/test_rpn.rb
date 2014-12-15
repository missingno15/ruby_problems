require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require_relative '../rpn'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestReversePolishNotation < Minitest::Test
  context "the ReversePolishNotation class" do
    setup do
      @rpn = ReversePolishNotation.new
    end

    should "have a method called 'calculate' defined" do
      assert_respond_to @rpn, 
                        :calculate, 
                        "The #calculate method is not defined"
    end

    should "expect the #calculate method to takes one argument" do
      assert_equal 1, 
                   @rpn.method(:calculate).arity, 
                   "#calculate method does not take the correct amount of arguments"
    end

    should "return correct answer given the addition operator" do
      assert_equal 10, 
                   @rpn.calculate("5 5 +"), 
                   "Does not return correct answer given the addition operator"
    end

    should "return correct answer given the subtraction operator" do
      assert_equal 4, 
                   @rpn.calculate("8 4 -"), 
                   "Does not return correct answer given the subtraction operator"
    end

    should "return correct answer given the multiplication operator" do
      assert_equal 48, 
                   @rpn.calculate('8 6 *'), 
                   "Does not return correct answer given the multiplication operator"
    end

    should "return correct answer given the division operator" do
      assert_equal 1, 
                   @rpn.calculate('6 6 /'), 
                   "Does not return correct answer given the division operator"
    end

    should "return correct answer for an equation using all operators" do
      assert_equal 23, 
                   @rpn.calculate("18 30 + 2 - 2 * 4 /"),
                   "Does not give correct answer when equation uses all the operators"
    end

    should "solve from the middle if the solution begins from the middle" do
      assert_equal -1,
                   @rpn.calculate('2 1 12 3 / - +'),
                   "Does not given correct answer when solution begins in the middle"
    end

    should "solve this equation as well for good measure lol" do
      assert_equal 18,
                   @rpn.calculate('2 3 11 + 5 - *'),
                   "Does not give a correct answer for this test"
    end
  end
end
