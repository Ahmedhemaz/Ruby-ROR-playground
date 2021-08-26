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

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" \
     "The performer is #{ticket.performer}.\n" \
     "The seat is #{ticket.seat}, " \
     "and it costs $ #{ticket.price}"

puts '==========================='
def ticket.availability_status
  'sold'
end

def ticket.available?
  false
end

if ticket.available?
  puts 'Ya Wala'
else
  puts 'Ya Booma'
end
puts '==========================='

# falsy and truthy values test
IS_TRUTHY = 'is truthy'.freeze
IS_FALSY = 'is falsy'.freeze
EMPTY_STRING = 'empty string'.freeze
EXAMPLE_STRING = 'EXAMPLE string'.freeze
ZERO_NUMBER = 'NUMBER ZERO'.freeze
NEGATIVE_NUMBER = 'NEGATIVE NUMBER'.freeze
EXAMPLE_NUMBER = 'EXAMPLE NUMBER'.freeze
NIL_VALUE = 'NIL VALUE'.freeze

if ''
  puts EMPTY_STRING + IS_TRUTHY
else
  puts EMPTY_STRING + IS_FALSY
end

if 'abc'
  puts EXAMPLE_STRING + IS_TRUTHY
else
  puts EXAMPLE_STRING + IS_FALSY
end

if 0
  puts ZERO_NUMBER + IS_TRUTHY
else
  puts ZERO_NUMBER + IS_FALSY
end

if -1
  puts NEGATIVE_NUMBER + IS_TRUTHY
else
  puts NEGATIVE_NUMBER + IS_FALSY
end

if nil
  puts NIL_VALUE + IS_TRUTHY
else
  puts NIL_VALUE + IS_FALSY
end

# puts '==========================='

puts "Before #{10 + 5}"

require './over_ride_plus'

puts "After #{10 + 5}"
