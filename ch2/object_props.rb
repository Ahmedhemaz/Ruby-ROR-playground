obj = Object.new
puts "The id of obj is #{obj.object_id}."
str = 'Strings are objects too, and this is a string!'
puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."

a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

puts '====================respond_to======================'
obj = Object.new
if obj.respond_to?('talk')
  obj.talk
else
  puts "Sorry, the object doesn't understand the 'talk' message."
end

puts '=================send=============================='

ticket = Object.new

def ticket.date
  '26/8/2021'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  'Second Balcony, row J, seat 12'
end

def ticket.price
  5.50
end

print 'Enter ticket props desired:'
request = gets.chomp

puts request

if ticket.respond_to?(request)
  puts ticket.send(request)
  # send  can call public/private methods
  # public_send   to call public methods
else
  puts 'OH NO OH NO'
end
