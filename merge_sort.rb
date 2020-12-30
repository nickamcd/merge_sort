# frozen_string_literal: true

def merge_sort(arr)
  # Base case
  if arr.length <= 1
    arr
  else
    # Sort left side of array.
    left = merge_sort(arr.slice(0...arr.length / 2))
    # Sort right side of array.
    right = merge_sort(arr.slice(arr.length / 2..-1))
    # Merge both sides
    merge(left, right)
  end
end

def merge(left, right, sorted=[])
  # Merge until both arrays are empty.
  unless left.empty? && right.empty?
    # Compare for the lesser value.
    sorted << if left[0] < right[0]
                left.shift
              else
                right.shift
              end
  end
  # Combine all arrays and return with lesser values in front.
  sorted + left + right
end


p merge_sort([42, 742, 223, 19, 6, 1111, 482, 99])
