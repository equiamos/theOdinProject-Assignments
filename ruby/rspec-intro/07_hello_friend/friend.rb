class Friend

  def greeting(name=nil)
    if name
      "Hello, #{name}!"
    else
      "Hello!"
    end
  end

end

# Below code also works, but above seems better:
# def greeting(name="")
#   if name.length < 1
#     "Hello!"
#   else
#     "Hello, #{name}!"
#   end
# end
