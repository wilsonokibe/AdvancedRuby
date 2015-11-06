require_relative "../lib/string.rb"

str = "I am a string"
str2 = "And I am the other string"

def str.twice
  downcase + ", " + downcase
end

class << str2
  def twice_capitalise
    upcase + ". " + upcase
  end
end

p str.twice
p str2.twice_capitalise

p str2.twice
p str.twice_capitalise
