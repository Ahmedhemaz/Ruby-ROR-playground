# modeling Ticket
class Ticket
  def event
    puts "Can't really be specified yet..."
  end
end

obj = Ticket.new
obj.event

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
