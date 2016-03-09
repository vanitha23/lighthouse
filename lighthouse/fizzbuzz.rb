# 1.upto(100) do |i|
#   if i % 5 == 0 && i % 3 == 0
#     puts "FizzBuzz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   else
#     puts i
#   end
# end

start_Value = gets.chomp.to_i
end_Value = gets.chomp.to_i
start_Value.upto(end_Value) do |x|
  if x % 5 == 0 && x % 3 == 0
    puts "FizzBuzz"
  elsif x % 5 == 0
    puts "Buzz"
  elsif x % 3 == 0
    puts "Fizz"
  else
    puts x
  end
end
