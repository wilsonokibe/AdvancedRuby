class NewString < String
  def exclude?
    !include
  end

  def include?
    !exclude?
  end

  def method_missing(method_name, *args)
    puts "The method #{method_name} doesnt exist."
  end
end
