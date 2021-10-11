def is_palindrome(str)
  s = str.downcase
  s == s.reverse
end
