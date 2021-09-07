def factorial
  yield
end

n = gets.to_i
factorial do
  current = 1
  (1..n).each do |x|
    current *= x
  end
  puts current
end
