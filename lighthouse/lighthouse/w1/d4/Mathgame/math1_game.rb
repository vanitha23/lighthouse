# def initialize
#   pp "Welcome to Math Game!!"

#   p "Name of player 1: "
#   @username = gets.chomp
#   p1 = player1(@username)
#   p "Name of player 2: "
#   @username = gets.chomp 
#   p2 = player2(@username)
#   @check_case = true
#   @turn = 0

#   pp "Let's start the game!!"
# end


@player_score = 0
@player_life = 3
@p1_num1 = p1_num1
@p1_num2 = p2_num2

def random(number)
  number.rand(1..20)
end



def values(num1,num2)
  pp "The first number for player1 is  : #{num1}"
  num1 = gets.chomp
  pp "The second number for player1 is : #{num2}"  
  num2 = gets.chomp

end



def sum(num1,num2,sum)
  sum = num1 + num2
end

# player1 = p1x
# player2 = p2

while @player_life != 0 do
random(p1_num1)
random(p1_num2)
end

values(num1,num2)

sum = gets.chomp.to_i

puts sum(num1,num2,sum)

if  sum == correct?
  @player_score += 1
else
  @player_life -= 1
end










