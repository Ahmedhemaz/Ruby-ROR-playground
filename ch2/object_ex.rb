obj = Object.new
puts obj
def obj.talk
  puts "I'm Talking"
end
puts obj

obj.talk

# def obj.c2f(temp)
#   temp * 9.0 / 5 + 32
# end

# puts obj.c2f(30)

def obj.c2f(temp)
  temp * 9.0 / 5 + 32
end

puts obj.c2f 30
