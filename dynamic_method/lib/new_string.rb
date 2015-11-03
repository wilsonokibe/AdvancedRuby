class NewString < String
  def exclude?(string)
    puts "You are in method exclude:"
    puts string
    include?("entering include from exclude")
  end

  def include?(string)
    puts "You are in method include:"
    puts string  
  end

  def empty?(string)
    puts "You are in method empty:"
  end

  def length?(string)
    puts "You are in method length:"
    puts "#{string} length is #{string.length}"
  end

  def method_missing(method_name, *args)
    puts "The method #{method_name} doesnt exist."
  end
end
