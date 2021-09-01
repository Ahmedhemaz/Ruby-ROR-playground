def test_if
  puts 'done' && (1 > 55)
end

test_if
x = 3
def return_of_if(x)
  def ayo
    puts 'ayo'
  end
  if x == 1
    1
  elsif x == 2
    2
  end
end

puts return_of_if(x).nil?
# ayo

y = 5 if x > 3

puts y.nil?
