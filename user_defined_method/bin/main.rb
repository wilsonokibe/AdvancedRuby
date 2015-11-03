require_relative '../lib/new_method'

puts "I will create for you a new method on the go:\nEnter a name for your new method"
method_name = gets.chomp

puts "Enter method\'s body"
method_body = gets.chomp

new_method = NewMethod.new(method_name, method_body)
new_method.evaluate_method
