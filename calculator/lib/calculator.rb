class Calculator

  def initialize(value1, operand, value2)
    @value1 = value1.to_i
    @operand = operand.to_sym
    @value2 = value2.to_i
  end

  def calculate    
    @value1.send(@operand, @value2) if valid_input?
  end

  def valid_input?
    raise "Invalid value for operand 1 or operand 2" if(!@value1.to_s.match(/^\d+$/) || !@value2.to_s.match(/^\d+$/)) 
    raise "Invalid operator" if(!@operand.to_s.match(/^\+|\-|\*|\/+$/))
    true
  rescue Exception
    STDERR.puts "Invalid input error: #{$!}"
  end
end