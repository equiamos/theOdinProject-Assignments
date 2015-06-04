# class Dictionary
#   def entries
#     @entries = Hash.new
#   end
#
#   def add(keyword, definition=nil)
#     entries[:keyword] = definition
#   end
#
#   def keywords
#     @entries.keys.sort
#   end
#
# end














#BELOW Solution from official solutions used to fix tests:
class Dictionary
  def entries
    @entries ||= {}
  end

  def add(key, value=nil)
    entries[key] = value
  end

  def keywords
    @entries.keys.sort
  end

  def include? word
    entries.keys.include? word
  end

  def find partial_word
    result = {}
    entries.each_pair do |key, definition|
      if key =~ /^#{partial_word}/
        result[key] = definition
      end
    end
    result
  end

  def printable
    entries.map do |key_val|
      %Q{[#{key_val.first}] "#{key_val.last}"}
    end.sort.join("\n")
  end
end
