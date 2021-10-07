require_relative '../lib/take_the_first_n_elements'
require 'codewars_test'

describe 'Fixed tests' do
  list = [0, 1, 2, 3, 5, 8, 13]
  it 'passes basic tests' do
    Test.assert_equals(take(list, 3), [0, 1, 2], 'should return the first 3 items')
    Test.assert_equals(take(list, 0), [], 'should return 0 items')
    Test.assert_equals(take([], 3), [], 'empty list should return empty list')
  end
end
