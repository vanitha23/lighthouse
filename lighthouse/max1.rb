#find greatest number in an array
def Maximum(array)
#assign greatest number to zero
  maxNo = array[0]
 # find the length of the array
  arrayLength = array.arrayLength
# compare each element in an array
  for i in 1..arrayLength
    if array[i].to_i > maxNo
      maxNo = array[i]
    end
    puts maxNo
  end
end
#puts array = ([2,42,22,52])

