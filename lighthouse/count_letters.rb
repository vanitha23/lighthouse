#assgn a class
#get a string
#split full string into letters
#skip spaces while counting
#count each number of letters
#print each letter with number of occurances

def count_letters(my_string)
  hash = {}
  my_string.split("").each_with_index do |x,y|
    if x != " "

      if  hash[x].nil?
        hash[x] = []
      end
      hash[x] << y
    end
    
  end
  hash

end
puts count_letters("jump in the pool").inspect

# my_array = [1,2,3,4]

# my_array << 5

# my_array = [1,2,3,4,5]