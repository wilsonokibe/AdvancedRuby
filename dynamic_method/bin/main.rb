require_relative '../lib/new_string.rb'

obj = NewString

puts "I will perform a string operation call to any method you specify and give you a result.
\nAvailable methods are: include? string, exclude? string, length? string, empty? string
\nEnter string:"

string = gets.chomp
string_value = NewString.new(string)

puts "Enter method name and argument if any (argument and method name must be separated with a space)"
method_statement = gets.chomp
method_statement = method_statement.split
method_name      = method_statement.shift

if string_value.respond_to? method_name
  number_of_args   = method_statement.length
  method_args      = method_statement.join(',')
  arity_params     = obj.instance_method(method_name).arity

  if arity_params == number_of_args 
    string_value.send(method_name, method_args)
  elsif(arity_params > number_of_args)
    puts "There is less parameters than required for method: #{method_name}"
  elsif(arity_params < number_of_args)
    puts "here is more parameters than required for method: #{method_name}"
  end
else
  puts "Method: #{method_name} does not exist in the class."
end
