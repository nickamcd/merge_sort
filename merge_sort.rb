def merge_sort(arr)
  if arr.length < 2
    arr
  else
    # Sort left half of elements.
    left = merge_sort(arr[0..arr.length/2])
    # Sort right half of elements.
    right = merge_sort(arr[arr.length/2..array.length])
    # Merge sorted halves.
    merge(left, right)
  end
end

def merge(left, right)
  sorted = []

  left.each do 
    left[0] < right[0] ? sorted << left.shift : sorted << right.shift
  end
end