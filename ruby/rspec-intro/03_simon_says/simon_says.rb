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
  titlewords = string.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  titlewords.first.capitalize!
  titlewords.join(" ")
end
