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

def bubble_sort(arr)
  # 1. Iterate through the unsorted array, comparing each element with the
  # following element
  swapped = false
  (0...arr.length).each do |i|
    j = i + 1
    if j < arr.length
      left, right = arr[i], arr[j]
      # 2. If the current element is greater than the next, swap their positions.
      if left > right
        swapped = true
        arr[i], arr[j] = right, left
      end
    end
  end
  # 3. Start from the beginning of the array and continue this process until
  # the array is finally sorted (ie. no swaps are made in a single trip through).
  swapped ? bubble_sort(arr) : arr
end

def merge(left, right, acc = [])
  return acc if left.empty? && right.empty?
  return merge(left[1..-1], right, acc.push(left[0])) if right.empty?
  return merge(left, right[1..-1], acc.push(right[0])) if left.empty?
  l, r = left[0], right[0]
  if l < r
    merge(left[1..-1], right, acc.push(l))
  else
    merge(left, right[1..-1], acc.push(r))
  end
end

def merge_sort(arr)
  if arr.empty?
    []
  elsif arr.length == 1
    arr
  else
    middle = arr.length / 2
    merge(merge_sort(arr[0...middle]), merge_sort(arr[middle..-1]))
  end
end
