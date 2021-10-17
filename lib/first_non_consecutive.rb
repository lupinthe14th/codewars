def first_non_consecutive(arr)
  i = 0
  while i < arr.length
    return arr[i + 1] if arr[i] + 1 != arr[i + 1]

    i += 1
  end
end
