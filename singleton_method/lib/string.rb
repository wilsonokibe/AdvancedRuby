class String

  def missing_method(name)
    puts "Undefined or non-existing method; #{name}"
  end

  class << self
    def twice_capitalise str
      str.upcase + ". " + str.upcase
    end
  end
end