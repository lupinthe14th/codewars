require_relative "../lib/even_or_odd"
require "codewars_test"

describe "Fixed tests" do
  it "should pass fixed tests" do
    Test.assert_equals(even_or_odd(2), "Even")
    Test.assert_equals(even_or_odd(0), "Even")
    Test.assert_equals(even_or_odd(7), "Odd")
    Test.assert_equals(even_or_odd(1), "Odd")
    Test.assert_equals(even_or_odd(-1), "Odd")
  end
end
