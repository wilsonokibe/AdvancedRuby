require_relative "../lib/string.rb"

str = "I am a string"
str2 = "And I am the other string"

def str.twice
  self.downcase + ", " + self.downcase
end

p String.twice_capitalise str
p str.twice

p String.twice_capitalise str2
p str2.twice
