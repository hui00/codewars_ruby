# frozen_string_literal: true

# Define a function that takes in two non-negative integers a and b and
# returns the last decimal digit of aba^bab. Note that aaa and bbb may be very large!
# For example, the last decimal digit of 979^797 is 999,
# since 97=47829699^7 = 478296997=4782969. The last decimal
# digit of (2200)2300({2^{200}})^{2^{300}}(2200)2300,
# which has over 109210^{92}1092 decimal digits, is 666.
# Also, please take 000^000 to be 111.
#   You may assume that the input will always be valid

def last_digit(n1, n2)

  puts n1.digits[0].to_i
  case n1.digits[0].to_i
  when 0
    return 0
  when 1
    return 1
  when 2
    case ((n2 / 4).to_f % 1)
    when 0.0
      return 6
    when 0.25
      return 2
    when 0.50
      return 4
    else
      return 8
    end
  when 3
    case ((n2 / 4).to_f % 1)
    when 0.0
      return 1
    when 0.25
      return 3
    when 0.50
      return 9
    else
      return 7
    end
  when 4
    n2.odd? ? 4 : 6
  when 5
    return 5
  when 6
    return 6
  when 7
    case ((n2 / 4).to_f % 1)
    when 0.0
      return 1
    when 0.25
      return 7
    when 0.50
      return 9
    else
      return 3
    end
  when 8
    case ((n2 / 4.to_f % 1))
    when 0.0
      return 6
    when 0.25
      return 8
    when 0.50
      return 4
    else
      return 2
    end
  else
    return 9
  end
end

# puts last_digit(3715290469715693021198967285016729344580685479654510946723, 68819615221552997273737174557165657483427362207517952651)
# last_digit(10, 9)
# puts last_digit(4, 1) # 4
# puts last_digit(4, 2) # 6
# puts last_digit(9, 7) # 9
# puts last_digit(10, 10 ** 10) # 0)
# puts last_digit(2 ** 200, 2 ** 300) # 6
puts last_digit(3715290469715693021198967285016729344580685479654510946723, 68819615221552997273737174557165657483427362207517952651) # 7)

