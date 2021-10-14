require_relative '../lib/fix_the_meerkat'
require 'codewars_test'

describe 'Solution' do
  it 'Fixed tests' do
    Test.assert_equals(fix_the_meerkat(%w[tail body head]), %w[head body tail])
    Test.assert_equals(fix_the_meerkat(%w[tails body heads]), %w[heads body tails])
    Test.assert_equals(fix_the_meerkat(%w[bottom middle top]), %w[top middle bottom])
    Test.assert_equals(fix_the_meerkat(['lower legs', 'torso', 'upper legs']), ['upper legs', 'torso', 'lower legs'])
    Test.assert_equals(fix_the_meerkat(%w[ground rainbow sky]), %w[sky rainbow ground])
  end
end
