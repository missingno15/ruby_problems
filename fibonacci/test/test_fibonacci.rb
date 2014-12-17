require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require_relative '../fibonacci'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFibonacci < Minitest::Test
  context "the Fibonacci class" do
    setup do
      @fibonacci = Fibonacci.new
    end

    should 'have a #is_fibonacci method defined' do
      assert_respond_to @fibonacci, :is_fibonacci?
    end

    should 'allow #is_fibonacci to take 1 argument' do
      assert_equal 1, @fibonacci.method(:is_fibonacci?).arity
    end
    
    should 'have #is_fibonacci? return true when given a valid fibonacci number' do

      [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144].each do |n|
        assert_equal true, @fibonacci.is_fibonacci?(n)
      end
    end

    should 'have #is_fibonacci? return false when not given a fibonacci number' do
      [4, 6, 7, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143].each { |n| assert_equal false, @fibonacci.is_fibonacci?(n) }
    end

  end
end
