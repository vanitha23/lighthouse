class Barracks

  attr_accessor :gold, :food

  def initialize
  	@gold = 1000
  	@food = 80
  end	

  # def can_train_footman?
  #   true
  # end

  def train_footman
  	@gold -= 135
  	@food -= 2
  	footman = Footman.new
  end

  def enough_food
  	self.food
  end

  def enough_gold
		self.gold
  end

  def not_enough_food
  	return 1
  end

  def not_enough_gold
  	return 134
  end

	def can_train_footman? 
		user_input_food = gets.chomp
		user_input_gold = gets.chomp
		if (enough_food && enough_gold) == (user_input_food && user_input_gold)
			return true
		elsif enough_food != user_input_food
			not_enough_food	
			return false
		elsif enough_gold != user_input_gold
			not_enough_food
			return false
		elsif (enough_food && enough_gold) != (user_input_food && user_input_gold)
			return can_train_footman? = []	
		end
	end
end
can_train_footman?

