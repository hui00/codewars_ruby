# In this kata you will create a function that takes a list
# of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
  newarr = []
  l.each do |e|
    if(e.is_a? Integer)
      newarr.push(e)
    end
  end
  newarr
end


filter_list([1,2,'a','b'])




# best
# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end