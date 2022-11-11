# frozen_string_literal: true

# Now calculate the average and compare your score!
# Return True if you're better, else False!

def better_than_average(arr, points)
  points > arr.inject(:+) / arr.length
  ## or arr.sum
end

better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75)





