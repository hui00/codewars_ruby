# frozen_string_literal: true
# Define a function that takes an integer argument
# and returns a logical value true or false depending
# on if the integer is a prime.
require 'prime'

def isPrime(num)
  num.prime?

end

puts isPrime(39229)
# puts isPrime(958297)
