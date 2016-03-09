
# def calculate_sum(list)
#   sum = 0
#   list.each do |ele|
#     sum += ele
#   end
#   sum
# end

# # 1. The following should return 165 instead of an error
# puts total_sum([16,21,31,42,55])

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerable

# class Calculate_Sum(list)
#   def Calculate
#     @sum = sum
#   end
#   sum = list.reduce { |sum, ele| sum + ele}
#   puts "The total value is #{sum}"
# end
# Calculate_Sum([2,3,5,6])

list1 = [16,21,31,42,55].reduce(0) { | sum, element| sum + element }
puts "Sum of the array = #{list1}"