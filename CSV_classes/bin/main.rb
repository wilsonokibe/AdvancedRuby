require_relative '../lib/class_creator.rb'

puts "Enter file path for CSV file or simply press enter to use existing csv file"
file_path = gets
csv = "csv"

#gets file extension
puts file_extension = File.extname(file_path) 

if file_extension =~ /^.csv$/
  puts "pass user's csv to class"

elsif file_path =~ /^\n$/
  object = ClassCreator.new("../lib/persons.csv")
  puts object.build_class_and_function
else 
  puts "You entered a wrong file extension"
end
