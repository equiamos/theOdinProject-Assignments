class Friend

  def greeting(name=nil)
    if !name
      "Hello!"
    else
      "Hello, #{name}!"
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
