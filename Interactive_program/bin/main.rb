require_relative '../lib/interactive_program'

int_prog = InteractiveProgram.new
code_binding = int_prog.get_binding

user_code = ""

puts "Write code: \nTo execute code press enter on newline.\nTo quit, type 'q' and enter."

begin
  entered_value = gets

  if entered_value =~ /^\n$/
    puts  "Output>> #{int_prog.execute(user_code, code_binding)}"
    user_code = ""
  else
    user_code += entered_value
  end
end until entered_value =~ /^q$/i
