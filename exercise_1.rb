require 'minitest/autorun'

# function checks if n is a correct parameter(numeric)
def check_params(n)
  raise 'input must be a number' unless n.is_a?(Numeric)
end

# function returns sum of odd numbers in a range of (0..n)
def odd_sum(n)
  check_params(n)
  (0..n).to_a.select { |number|  number.odd?  }.sum
end

# tests
class TestOddSum < MiniTest::Test

  def test_if_n_numeric?
    assert_kind_of Numeric, odd_sum(10)
  end

  def test_odd_sum
    assert_equal 25, odd_sum(10)
    assert_equal 1, odd_sum(1)
  end
end

puts odd_sum(10)
puts odd_sum(1)
puts odd_sum('a')
