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
    begin
      if(!@value1.to_s.match(/^\d+$/) || !@value2.to_s.match(/^\d+$/))
        raise "Invalid value for operand 1 or operand 2" 
      elsif(!@operand.to_s.match(/^\+|\-|\*|\/+$/))
        raise "Invalid operator"
      else
        true
      end
    rescue Exception
      STDERR.puts "Invalid input error: #{$!}"
    end
  end
end