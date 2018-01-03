require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/fibonacci'

describe "fibonacci" do
  describe "basic tests" do
    describe "test 1" do
      it "fibonacci of 1" do
        fibonacci(1).must_equal 1
      end
    end

    describe "test 2" do
      it "fibonacci of 3" do
        fibonacci(3).must_equal 2
      end
    end

    describe "test 3" do
      it "fibonacci of 8" do
        fibonacci(8).must_equal 21
      end
    end

    describe "test 4" do
      it "fibonacci of 12" do
        fibonacci(12).must_equal 144
      end
    end

    describe "test 5" do
      it "fibonacci of 6" do
        fibonacci(6).must_equal 8
      end
    end
  end

  # if the parameter is an object, check for nil
  describe "nil object input test" do
    it "nil object is not an integer" do
      proc {fibonacci(nil)}.must_raise ArgumentError
    end
  end

  # check for edge cases
  describe "edge cases" do
    describe "edge case 1" do
      it "negative input" do
        proc {fibonacci(-9)}.must_raise ArgumentError
      end
    end

    describe "edge case 2" do
      it "zero input" do
        fibonacci(0).must_equal 0
      end
    end
  end
end
