def first_non_consecutive(arr)
  arr.each_index do |i|
    return arr[i + 1] if arr[i].next != arr[i + 1]
  end
end
