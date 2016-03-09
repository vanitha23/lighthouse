# def array(arr)
#  element = array.first
# array.each do |x|
#   element = x if element > x
#   end
#   puts element
#   end
# end

def maximum_advanced(arr)
  arr.reduce { |a,e| a > e ? a : e}
end
