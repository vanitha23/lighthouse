# import re
# pattern = '^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$'
# if re.search(pattern, 'XCCMCI')
#     print 'Valid Roman'
# else
#     print 'Not valid Roman'
# end

def to_roman(num)
  # Your code here
  all_romans = { 
                "M" => 1_000,
                "D" => 500 ,
                "C" => 100 ,
                "L" => 50 ,
                "X" => 10 ,
                "V" => 5,
                "I" => 1  
              }
  if num == 0
    return "" 
  end
  all_romans.map { |roman, value| 
        if num >= value
          return roman + to_roman(num - value)
        end 
      }
end
# Drive code... this should print out trues.
 
# puts to_roman(1) == "I"
# puts to_roman(3) == "III"
# puts to_roman(6) == "VI"

puts to_roman(476)
