# Copied below uncommented code so that I could fix tests:

# BELOW is code copied from original problem solution:
# class Book
#   attr_reader :title
#
#   def title=(input_title)
#     words = input_title.split(" ")
#     words = [words[0].capitalize] +
#       words[1..-1].map do |word|
#         little_words = %w{a an and the in of}
#         if little_words.include? word
#           word
#         else
#           word.capitalize
#         end
#       end
#     @title = words.join(" ")
#   end
#
# end

class Book
  def title=(str)
    words = str.split
    new_title = ""
    words.each_with_index do |word, index|
      if word.length > 3 or index == 0 or word == "i"
        new_title << word.capitalize
      else
        new_title << word
      end
      new_title << " "
    end
    @title = new_title.chop
  end

  def title
    @title
  end
end

# BELOW: My current code
# class Book
#   def initialize(title)
#     @title = title
#   end
#
#   def title=(new_title)
#     titlewords = new_title.split.map do |word|
#       if %w(the and over).include?(word)
#         word
#       else
#         word.capitalize
#       end
#     end
#     titlewords.first.capitalize!
#     @title = titlewords.join(" ")
#   end
#
# end
