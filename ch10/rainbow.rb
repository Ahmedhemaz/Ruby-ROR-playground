class Rainbow
  include Enumerable
  def each
    yield 'red'
    yield 'orange'
    yield 'yellow'
    yield 'green'
    yield 'blue'
    yield 'indigo'
    yield 'violet'
  end
end

rainbow = Rainbow.new
rainbow.each { |color| puts "Next color: is #{color}" }
y_color = rainbow.find { |color| color.start_with?('y') }
puts y_color
