def html_special_chars(str)
  str.gsub(/<|>|"|&/, '<' => '&lt;', '>' => '&gt;', '"' => '&quot;', '&' => '&amp;')
end
