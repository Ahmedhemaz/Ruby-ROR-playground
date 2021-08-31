puts 'TOP Level....'
puts "self is #{self}"

class C
  puts 'Class block....'
  puts "self is #{self}"

  def self.x
    puts 'Class method block....'
    puts "self is #{self}"
  end

  def y
    puts 'Instance method block....'
    puts "self is #{self}"
  end
end

C.x
c = C.new
c.y
