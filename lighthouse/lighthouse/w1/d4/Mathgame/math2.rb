@p1_lives = 3
@p2_lives = 3

def life_lost1
  @p1_lives -= 1
end

def life_lost2
  @p2_lives -= 1
end

def question
  "What is #{@num1} + #{@num2}?"
end

def answer
  @num1 + @num2 
end

@turn = 2

def player_turn
  @turn += 1
end

def game
  while (@p1_lives || @p2_lives) > 0
    if @turn.even?
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      p "Player 1  - this is your turn"
      p question
      user_input = gets.chomp.to_i
      if user_input == answer
        p "You are right!"
      else
        p "Sorry you are wrong"
        life_lost1
        p "You have #{@p1_lives} more lives left"
      end
      player_turn
    else
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      p "Player 2  - this is your turn"
      p question
      user_input = gets.chomp.to_i
      if user_input == answer
        p "You are right!"
      else
        p "Sorry you are wrong"
        life_lost2
        p "You have #{@p2_lives} more lives left"
      end
      player_turn
    end  
  end
end

game




