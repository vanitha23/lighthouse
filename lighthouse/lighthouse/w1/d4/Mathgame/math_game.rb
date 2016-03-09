def generate_question(question)
  attr accessor

#Operation
def operation(operation)
puts "Type the operation 
(addition,subtraction,multiplication,division) : "
operation = gets.chomp
end

#Add
if operation == "addition"

    puts "Type first value :"
  n1 = gets.to_i
  puts "Type second value : "
  n2 = gets.to_i
    answer = n1 + n2
    puts "The sum is... #{n1} + #{n2} = #{answer}"
#end

#Subtract
elsif operation == "subtraction"
#def subtraction_function
    puts "Type first value :"
  n1 = gets.to_i
  puts "Type second value : "
  n2 = gets.to_i
    answer = n1 - n2
    puts "The subtraction is... #{n1} - #{n2} = #{answer}"
#end

#Multiply
elsif operation == "multiplication"
    puts "Type first value :"
  n1 = gets.to_i
  puts "Type second value : "
  n2 = gets.to_i
    answer = n1 * n2
    puts "The multiplication is... #{n1} * #{n2} = #{answer}"
# end

#Division
else operation == "division"
    puts "Type first value :"
  n1 = gets.to_i
  puts "Type second value : "
  n2 = gets.to_i
    answer = n1 / n2
    puts "The division is...#{n1} / #{n2} = #{answer}"
# end
end
end

def prompt_player_for_answer
  
end

def verify_answer
  p "go ahead" if answer? correct : p "quit"
end