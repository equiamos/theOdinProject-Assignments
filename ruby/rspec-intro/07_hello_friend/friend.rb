class Friend

  def greeting(name="")####*name
    if name.length < 1
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end

end
