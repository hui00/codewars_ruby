# frozen_string_literal: true

# our task is to make a function that can
# take any non-negative integer as an argument and
# return it with its digits in descending order.
# Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
  n.to_s.each_char.sort.reverse.join.to_i
end

puts(descending_order(123_456_789))
