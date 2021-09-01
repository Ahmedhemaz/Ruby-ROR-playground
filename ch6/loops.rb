n = 1
loop do
  n += 1
  break if n > 9
end
puts "After loop do break if block... n= #{n}"

n = 1

loop do
  n += 1
  next unless n == 9

  break
end

puts "After loop do next block... n= #{n}"

n = 1

while n < 9
  puts n
  n += 1
end
puts "After While block... n= #{n}"

n = 1
begin
  puts n
  n += 1
end while n < 9
puts "After begin end While ... n= #{n}"

n = 1

until n > 9
  puts n
  n += 1
end
puts "After until block ... n= #{n}"

elements = [1, 2, 3, 4, 5, 6, 7, 88, 99, 0.39469]

elements.each do |element|
  puts element
end
