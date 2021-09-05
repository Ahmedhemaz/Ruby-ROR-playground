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
