# frozen_string_literal: true
def countSheeps array
  sum = 0
  array.each do |var|
    if (var)
      sum += 1
    end
  end
  sum

end

array1 = [true, true, true, false,
          true, true, true, true,
          true, false, true, false,
          true, false, false, true,
          true, true, true, true,
          false, false, true, true]

countSheeps(array1)

## improve
# array.count(true)