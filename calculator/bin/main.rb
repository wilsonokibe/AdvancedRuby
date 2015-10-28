require_relative "../lib/calculator.rb"

puts "Enter first value"
value1 = gets.chomp

puts "Enter operand"
operand = gets.chomp

puts "Enter second value"
value2 = gets.chomp

calculator = Calculator.new(value1, operand, value2)

puts calculator.calculate
