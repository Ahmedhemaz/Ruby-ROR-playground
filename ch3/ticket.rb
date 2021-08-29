# modeling Ticket
class Ticket
  attr_accessor :price
  attr_reader :venue, :date

  def initialize(venue, date, price)
    puts 'Ticket initializer'
    @venue = venue
    @date = date
    @price = price
  end

  def event
    puts "Can't really be specified yet..."
  end
end

obj = Ticket.new('Ruby', '29/8/2021', 30)
obj.event
puts obj.venue
puts obj.date
puts obj.price
obj.price = 45
puts obj.price

puts '=====================Over riding methods========================'
# Over riding class methods
class C
  def m
    puts 'method m1'
  end

  def m
    puts 'method m2'
  end
end

obj = C.new
obj.m

puts '============== reopening class C========================='
# reopening class C
class C
  def q
    puts 'from reopend class C q method'
  end
end
obj.q  # will print the new added q method
