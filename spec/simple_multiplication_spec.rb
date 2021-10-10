require_relative '../lib/simple_multiplication'

require 'codewars_test'

describe 'Tests' do
  it 'Fixed tests' do
    Test.assert_equals(simple_multiplication(2), 16)
    Test.assert_equals(simple_multiplication(1), 9)
    Test.assert_equals(simple_multiplication(8), 64)
    Test.assert_equals(simple_multiplication(4), 32)
    Test.assert_equals(simple_multiplication(5), 45)
  end
end
