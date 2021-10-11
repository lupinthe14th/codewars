def palindrome?(str)
  s = str.downcase
  s == s.reverse
end
