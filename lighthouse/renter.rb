
#must be baller and either furnished or rent cheaper than 2100
# def rent?(furnished, rent, baller)
#   if baller && (furnished || rent < 2100)
#     return true
#   else
#     return false
#   end
# end
# puts rent?(false, 2500, false)


def rent?(furnished, rent, baller)
   baller && (furnished || rent < 2100 ) ? true : false
end  
puts rent?(true, 2000, false)
