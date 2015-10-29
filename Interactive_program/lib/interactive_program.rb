class InteractiveProgram
  def get_binding
    binding
  end

  def execute(code, scope)
    eval(code, scope)
  end
end