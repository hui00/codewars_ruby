# frozen_string_literal: true
# The maximum sum subarray problem consists in
# finding the maximum sum of a contiguous subsequence in an array or list of integers:

def max_sequence(arr)
  return 0 if arr.empty?
  return arr.sum if arr.min > 0
  max = 0
  tmp = 0
  arr.each do |x|
    tmp += x
    if (x > tmp)
      tmp = x
    end
    if (tmp > max)
      max = tmp
    end
  end

  max
end

# arr = [1, 2, 3]
arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_sequence(arr)

# max_sequence(arr)

