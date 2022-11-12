# frozen_string_literal: true
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of
# water per hour of cycling.
# You get given the time in hours and you need to return the number of
# litres Nathan will drink, rounded to the smallest value.
#
def litres(time)
  def litres(time)
    (time.to_i * 0.5).to_i
    # your code here
  end
end

litres(2)

# (time * 0.5).floor
