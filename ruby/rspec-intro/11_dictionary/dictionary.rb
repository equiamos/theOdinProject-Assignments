class Dictionary
  def entries
    @entries ||= {}
  end

  def add(keyword, definition=nil)
    entries[keyword] = definition
  end

  def keywords
    entries.keys.sort
    # "Official" soln uses class variable @entries
    # Not sure why??
  end

  def include?(keyword)
    keywords.include?(keyword)
    # "Official" soln is:
    # entries.keys.include? (keyword)
    # Don't know why doesn't reference keywords method?
    # esp Since only searching in keys for word?
  end

###Working on below
  def find(partial_word)
    word_matches = {}
    entries.each_pair do |key, value|
      if key =~ /\A#{partial_word}/
        word_matches[key] = value
      end
      word_matches
    end


  end

end














# #BELOW Solution from official solutions used to fix tests:
# class Dictionary
#   def entries
#     @entries ||= {}
#   end
#
#   def add(key, value=nil)
#     entries[key] = value
#   end
#
#   def keywords
#     @entries.keys.sort
#   end
#
#   def include? word
#     entries.keys.include? word
#   end
#
#   def find partial_word
#     result = {}
#     entries.each_pair do |key, definition|
#       if key =~ /^#{partial_word}/
#         result[key] = definition
#       end
#     end
#     result
#   end
#
#   def printable
#     entries.map do |key_val|
#       %Q{[#{key_val.first}] "#{key_val.last}"}
#     end.sort.join("\n")
#   end
# end
