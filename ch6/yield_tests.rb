# def my_loop
#   yield while true
# end

def x
  puts 'From my loop from method x'
end
# my_loop { x }

c = [1, 2, 3]
# c = c.map { |el| el * 10 }
puts(c.map { |el| el * 10 })
puts c.map do |el| el * 10 end # will print Enumerator as it will be puts(c.map) and ignore the rest

def y(i)
  puts "From my loop from method #{i}"
end
5.times { |i| y(i + 1) }
