require_relative '../lib/palindrome'

require 'codewars_test'

describe 'Basic tests' do
  it "Testing for 'a'" do Test.assert_equals(palindrome?('a'), true) end
  it "Testing for 'aba'" do Test.assert_equals(palindrome?('aba'), true) end
  it "Testing for 'Abba'" do Test.assert_equals(palindrome?('Abba'), true) end
  it "Testing for 'hello'" do Test.assert_equals(palindrome?('hello'), false) end
  it "Testing for 'Bob'" do Test.assert_equals(palindrome?('Bob'), true) end
  it "Testing for 'Madam'" do Test.assert_equals(palindrome?('Madam'), true) end
  it "Testing for 'AbBa'" do Test.assert_equals(palindrome?('AbBa'), true) end
  it "Testing for ''" do Test.assert_equals(palindrome?(''), true) end
end
