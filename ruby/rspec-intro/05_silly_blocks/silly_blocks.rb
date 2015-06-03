def reverser(string)
#  array = string.split(" ")
#  array.map { |word| word.reverse! }*" "
  #*" " converts back to string

  string.gsub(/\S+/, &:reverse)
  # Appears to work same as above code
end

def adder(x, add=1)
  x + add
end

def repeater(num=nil)

end
