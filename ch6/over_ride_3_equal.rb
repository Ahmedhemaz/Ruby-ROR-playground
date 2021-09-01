class Ticket
  attr_accessor :venue, :date

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def ===(a_ticket)
    venue == a_ticket.venue
  end
end

t1 = Ticket.new('alex', '1/9/2021')
t2 = Ticket.new('cairo', '1/9/2021')
t3 = Ticket.new('alex', '1/9/2021')

case t1
when t2
  puts 'Same location as t2'
when t3
  puts 'Same location as t3'
else
  puts 'No Match!!'
end

puts t1 === t2
