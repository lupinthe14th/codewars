require_relative '../lib/switch_it_up'
require 'codewars_test'

describe 'Solution' do
  it 'finds numbers' do
    Test.assert_equals(switch_it_up(1), 'One')
    Test.assert_equals(switch_it_up(7), 'Seven')
  end
end
