print 'Enter the temp in Celsius: '
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The result is: #{fahrenheit}"

puts 'FROM FILE'
celsius = File.read('temp.dat')
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The result is: #{fahrenheit}"

celsius = 30
fahrenheit = (celsius.to_i * 9 / 5) + 32
fh = File.new('temp.out', 'w')
fh.puts(fahrenheit)
