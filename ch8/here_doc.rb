class RubyWelcomeWegon
  def message
    <<~HERE
      Hello Ruby :D
    HERE
  end

  def single_quote_message
    <<~'HERE'
      Hello Ruby :D
    HERE
  end
end

p RubyWelcomeWegon.new.message
p RubyWelcomeWegon.new.single_quote_message

array = [1, 2, 3, <<~HERE, 4]
  YOLO
HERE
p array

def here_docs_as_arg(a, b, c)
  p a, b, c
end

here_docs_as_arg(1, 2, <<~HERE)
  Ya Wala
HERE
