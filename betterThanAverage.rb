# frozen_string_literal: true

# Now calculate the average and compare your score!
# Return True if you're better, else False!

def better_than_average(arr, points)
  sum = 0
  arr.each { |a| sum += a }
  points > sum / arr.count
end

better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75)
