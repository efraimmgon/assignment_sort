def insertion_sort(arr)
  (0...arr.length).each do |i|
    elt = arr[i] # the current elt
    j = i # initialize the inner loop counter
    # while we don't reach the end of the sub-array and
    # while the next elt from end to start is greater than the current
    while j > 0 && arr[j - 1] > elt
      arr[j] = arr[j - 1] # move it one step to the right
      j -= 1 # go to the next elt on the left
    end
    arr[j] = elt # position the elt on the sub-array
  end
  arr
end
