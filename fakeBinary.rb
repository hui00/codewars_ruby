# frozen_string_literal: true

# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5
# and above with '1'. Return the resulting string.
#
# Note: input will never be an empty string

def fake_bin(s)
  newst = ""
  s.split("").each do |v|
    if (v.to_i < 5)
      newst = newst + "0"
    else
      newst = newst + "1"
    end
  end
  puts newst
end

fake_bin('45385593107843568')

# str.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
# def fake_bin(s)
#   s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
# end