# The rgb function is incomplete. Complete it so that passing in RGB decimal
# values will result in a hexadecimal representation being returned.
# Valid decimal values for RGB are 0 - 255.
# Any values that fall out of that range must be rounded to the closest valid value.

# Note: Your answer should always be 6 characters long,
# the shorthand with 3 will not work here.

# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

def rgb(r, g, b)
  r = 0 if r < 0
  r = 255 if r > 255
  g = 0 if g < 0
  g = 255 if g > 255
  b = 0 if b < 0
  b = 255 if b > 255
  puts r.to_s(16).upcase.rjust(2, "0") + g.to_s(16).upcase.rjust(2, "0") +
         b.to_s(16).upcase.rjust(2, "0")
end

rgb(255, 255, -20) # returns FFFFFF

# best solutions
# def rgb(r, g, b)
#   "%.2X%.2X%.2X" % [r, g, b].map { |i| [[i, 255].min, 0].max }
# end

# def rgb(r, g, b)
#   [r, g, b].map do |c|
#       if c <= 0
#         "00"
#       elsif c > 255
#         "FF"
#       else
#         c.to_s(16).upcase
#       end
#     end
#     .join("")
# end
