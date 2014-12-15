require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require_relative '../program'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFizzBuzz < Minitest::Test
  context "the FizzBuzz class" do
    setup do
      @fb = FizzBuzz.new
    end

    should "have a private method called multiple_of_three?" do
      assert_includes FizzBuzz.private_instance_methods, :multiple_of_three?
    end

    should "expect the multiple_of_three? method should return true for multiples of three" do
      assert_equal true, @fb.send(:multiple_of_three?, 3)
    end

    should "have a private method called multiple_of_five?" do
      assert_includes FizzBuzz.private_instance_methods, :multiple_of_five? 
    end

    should "expect the multiple_of_five? method should return true for multiples of five" do
      assert_equal true, @fb.send(:multiple_of_five?, 5)
    end

    should "have a method called fizzbuzz defined" do
      assert_respond_to @fb, :fizzbuzz
    end

    should "expect the fizzbuzz method to take a single argument" do
      assert_equal 1, @fb.method(:fizzbuzz).arity
    end

    should "return 'Fizz' when given a multiple of three" do
      assert_equal "Fizz", @fb.fizzbuzz(3)
    end

    should "return 'Buzz' when given a multiple of five" do
      assert_equal "Buzz", @fb.fizzbuzz(5)
    end

    should "return 'FizzBuzz' when given a multiple of three and five" do
      assert_equal "FizzBuzz", @fb.fizzbuzz(15)
    end

    should "return argument when given neither a multiple of three and five" do
      assert_equal 4, @fb.fizzbuzz(4)
    end

    should "have a method called fizzbuzz_range defined" do
      assert_respond_to @fb, :fizzbuzz_range
    end

    should "expect fizzbuzz_range method to accept 2 arguments" do
      assert_equal 2, @fb.method(:fizzbuzz_range).arity
    end

    should "expect fizzbuzz_range method to return an array returning corresponding elements" do
      correct_array = [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz"]

      assert_equal correct_array, @fb.fizzbuzz_range(1, 30)
    end
  end
end
