def reverser(string)
  string.gsub(/\S+/, &:reverse)

  #  Below also works:
  #  array = string.split(" ")
  #  array.map { |word| word.reverse! }*" "
    ## *" " converts back to string
end

def adder(x, add=1)
  x + add
end

def repeater
  # Not sure how this is supposed to work
end
