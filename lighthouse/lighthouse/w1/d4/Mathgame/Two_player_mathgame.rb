@lives_player1 = 3
@lives_player2 = 3

def life_lost_player1
  @lives_player1 -= 1
end

def life_lost_player2
  @lives_player2 -= 1
end

def question_prompt
  "What is the sum of #{@number1} + #{@number2}"
end

def answer_sum
  @number1 + @number2
end

@turn = 2

def player_turn
  @turn += 1
end

p "Let's start the game!!"

def math_game
    while (@lives_player1 || @lives_player2) > 0
      if @turn.even? 
        @number1 = rand(1..20)
        puts
        p @number1
        @number2 = rand(1..20)
        p @number2
        puts
        p "Player 1 - It's your turn"
        p question_prompt
        player_answer = gets.chomp.to_i
        if player_answer == answer_sum
          puts
          p "Yay..You win!!"
          puts
        else
          puts
          p "Sorry you lost"
          life_lost_player1
          p "You have only #{@lives_player1} lives left"
          puts
        end
        player_turn
      else
        p "Player 2 - It's your turn"
        @number1 = rand(1..20)
        puts
        p @number1
        @number2 = rand(1..20)
        p @number2
        puts
        p question_prompt
        player_answer = gets.chomp.to_i
        if player_answer == answer_sum
          puts
          p "Yay..You win!!"
          puts
          else
          puts
          p "Sorry you lost"
          life_lost_player2
          p "You have only #{@lives_player2} lives left"
          puts
        end
        player_turn
      end
    end
    puts
    p "The game is over!!"
    puts
end
math_game







