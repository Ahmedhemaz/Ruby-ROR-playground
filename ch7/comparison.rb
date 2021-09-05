class Price
  include Comparable
  attr_reader :dollar, :cents

  def initialize(dollar, cents)
    @dollar = dollar
    @cents = cents
  end

  def <=>(other)
    other.dollar <=> dollar && (other.cents <=> cents)
  end
end

p1 = Price.new(9, 50)
p2 = Price.new(10, 40)
p3 = Price.new(8, 99)

puts p1 < p3
puts p2 > p1
puts p1.between?(p3, p2)
