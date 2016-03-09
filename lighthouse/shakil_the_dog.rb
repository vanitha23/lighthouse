# barking silly dog
# n times of conversation
# speaking to shakil 
# shakil's response
# leaving the room

# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying some=thing to your dog (named Shakil).
 def shakil_the_dog()

 pretend_Bark = 'pretend bark'
 stop = 'stop'
 treat = 'treat'
 pretend_Cat = 'pretend cat'
 go_Away = 'go away'
# You'll probably want to write other methods, but this 
# encapsgulates the core dog logic
  puts "say(pretend bark,stop,pretend cat,treat,go way)"
  say = gets.chomp
  case say
  # when say_something
  #   puts "woof"
  when pretend_Bark 
    puts "WOOF WOOF WOOF"
  when stop || treat 
    puts "silence"
  when pretend_Cat
    puts "woof woof woof woof woof"
  when go_Away 
    puts "Shakil leaves the room"
  else
    puts "woof"
  end 
end
 

# variable_1 = 'hi'
# variable_2 = 'hello'

# variable_3 = ?????

# case variable_3
# when 'this is thvariablee '
#   puts 'it was hi'

  
# end



# Run our method
shakil_the_dog