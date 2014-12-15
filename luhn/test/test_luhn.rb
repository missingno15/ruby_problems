require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require_relative '../luhn'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCreditCard < Minitest::Test
  context "the CreditCard class" do
    setup do
      @credit_card = CreditCard.new
    end

    should "have a method called 'valid?' defined" do
      assert_respond_to @credit_card, :valid?
    end

    should "expect the parse method to take one argument" do
      assert_equal 1, @credit_card.method(:valid?).arity
    end

    should "return true for valid credit card numbers" do
      assert_equal true, @credit_card.valid?("5598991906688228")
    end

    should "return false for invalid credit card numbers" do
      assert_equal false, @credit_card.valid?("1234567812345678") 
    end
  end
end
