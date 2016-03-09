class Player

# attr_accessor : player_1_name
# attr_accessor : player_2_name
  def initialize
    @gain_a_point_player_1 = 0
    @gain_a_point_player_2 = 0
    @player_1_lives = 3
    @player_2_lives = 3
    #@turn = 2
  end

  def player_1_lose_a_life
    @player_1_lives -= 1
  end

  def player_2_lose_a_life
    @player_2_lives -= 1
  end

  def player_1_score
    @gain_a_point_player_1 += 1
  end

  def player_2_score
    @gain_a_point_player_2 += 1
  end

  def question_prompt
   "The value of #{@number1}  and  #{@number2} is : "
  end

  def operation
    # p "operation : addition , subtraction , multiplication , division"
    # @operation = gets.chomp
    # # value = 0
    # if @operation == addition
      @number1 + @number2
    # elsif @operation == subtraction
    #   @number1 - @number2
    # elsif @operation == multiplication
    #   @number1 * @number2
    # elsif @operation == division
    #   @number1 / @number2
    # else
    #   p "invalid operation..try again!!"
    # end
  end

  @turn = 2
  def player_turn
    @turn += 1
  end

  p "Let's start the game"

  def math_game
    while (@player_1_lives || @player_2_lives) > 0
      if @turn.even?
        p "Player 1 :- It's your turn"
        puts
        p @number1 = rand(1..20)
        p @number2 = rand(1..20)
        puts
        p question_prompt
        puts
        p operation
        puts
        user_answer = gets.chomp.to_i
        if user_answer == operation
          p "Yay! You rock!!"
          p "Your score is :" player_1_score
          puts
        else
          p "Sorry you lost :("
          p "Your lives left is :" player_1_lose_a_life
          puts
        end
        player_turn
      #end
    else
      p "Player 2 :- It's your turn"
        puts
        p @number1 = rand(1..20)
        p @number2 = rand(1..20)
        puts
        p question_prompt
        puts
        p operation
        puts
        user_answer = gets.chomp.to_i
        if user_answer == operation
          p "Yay! You rock!!"
          p "Your score is :" player_2_score
          puts
        else
          p "Sorry you lost :("
          p "Your lives left is :" player_2_lose_a_life
          puts
        end
        player_turn
      end
    end
  end
player = Player.new
p player.math_game
















