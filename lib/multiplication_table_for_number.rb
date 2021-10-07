def multiTable(number)
  # good luck
  acc = []
  (1..10).each do |n|
    ans = n * number
    acc.push "#{n} * #{number} = #{ans}"
  end
  acc.join("\n")
end
