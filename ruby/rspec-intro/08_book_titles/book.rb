class Book
  attr_reader :title

  def title=(new_title)
    littlewords = %w(the and over in of a an)
    titlewords = new_title.split.map do |word|
      if littlewords.include?(word)
        word
      else
        word.capitalize
      end
    end
    titlewords.first.capitalize!
    @title = titlewords.join(" ")
  end

end
