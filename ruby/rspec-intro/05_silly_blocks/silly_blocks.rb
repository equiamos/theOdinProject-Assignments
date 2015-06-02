def reverser(string)
  array = string.split(" ")
  array.map { |word| word.reverse! }*" "
  # *" " converts back to string
end

def adder(x, add=1)
  x + add
end
