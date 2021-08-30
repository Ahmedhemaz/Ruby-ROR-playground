# modeling Ticket
class Ticket
  VENUES = ['Convention Center', 'Fairgrounds', 'Town Hall'].freeze

  attr_accessor :price
  attr_reader :venue, :date

  def initialize(venue, date, price = 0)
    puts 'Ticket initializer'
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
    @price = price
  end

  def self.most_expensive(*tickets)
    tickets.max_by(&:price)
  end

  def event
    puts "Can't really be specified yet..."
  end
end

# obj = Ticket.new('Ruby', '29/8/2021', 30)
# obj.event
# puts obj.venue
# puts obj.date
# puts obj.price
# obj.price = 45
# puts obj.price

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
obj.q # will print the new added q method

puts '=================max method adding methods to the class Ticket as it\'s an object of Class =========='

# def Ticket.most_expensive(*tickets)
#   tickets.max_by(&:price)
# end

th = Ticket.new('Town Hall', '2013-11-12')
cc = Ticket.new('Convention Center', '2014-12-13')
fg = Ticket.new('Fairgrounds', '2015-02-14')
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}."

# h = fg.most_expensive(th, cc, fg)
# puts h
