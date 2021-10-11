require_relative '../lib/palindrome'

require 'codewars_test'

describe 'Basic tests' do
  it "Testing for 'a'" do Test.assert_equals(is_palindrome('a'), true) end
  it "Testing for 'aba'" do Test.assert_equals(is_palindrome('aba'), true) end
  it "Testing for 'Abba'" do Test.assert_equals(is_palindrome('Abba'), true) end
  it "Testing for 'hello'" do Test.assert_equals(is_palindrome('hello'), false) end
  it "Testing for 'Bob'" do Test.assert_equals(is_palindrome('Bob'), true) end
  it "Testing for 'Madam'" do Test.assert_equals(is_palindrome('Madam'), true) end
  it "Testing for 'AbBa'" do Test.assert_equals(is_palindrome('AbBa'), true) end
  it "Testing for ''" do Test.assert_equals(is_palindrome(''), true) end
end
