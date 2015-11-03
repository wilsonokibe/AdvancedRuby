require 'csv'
class ClassCreator

  def initialize(csv_file)
    file_name       = csv_file.split("/")[1..-1]
    file_name       = file_name[-1].split(".")
    file_name       = file_name.shift
    first_char      = file_name[0]
    @class_name     = file_name.gsub(first_char, first_char.upcase)
    @file_directory = csv_file

    Object.const_set(@class_name, Class.new)

    @csv_content = get_csv_content
    # csv_content.each { |x| puts x }  
  end

  def get_csv_content
    csv_content = []
    CSV.foreach(@file_directory) do |row|
      csv_content << row
    end
    csv_content
  end

  def build_class_and_function
    object_creator(@class_name, @csv_content)    
  end

  def object_creator(class_name, csv_content)
    new_object = []
    csv_content.each do
      new_object << Object.const_get(class_name).new
    end
    function_creator(new_object, @csv_content[0])
  end

  def function_creator(new_object, csv_header)
    counter = 0
    new_object.each do |obj|
      csv_header.each do |name_method|
        obj.class.class_eval("def #{name_method}; end")
      end
      puts "\n#{obj.class} #{counter}"
      puts obj.class.instance_methods(false).sort.inspect
      counter += 1
    end
  end
end