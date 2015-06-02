def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times=2)
 ([word] * times).join(" ")
end

def start_of_word(word, num)
  word[0...num]
end

def first_word(string)
  string.split(" ").first
end

def titleize(string)
  littlewords = %w { the and }
  # string.split(" ").map { |word| word.capitalize }.join(" ")
  # Need to make not capitalize "little words"
end
