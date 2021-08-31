class Car
  @@brands = []  ## problem if the class would be reopend and someone changed the class variables :(
  @@cars = {} ## problem if the class would be reopend and someone changed the class variables :(
  @@total_count = 0 ## problem if the class would be reopend and someone changed the class variables :(
  attr_accessor :brand

  def self.add_brand(brand)
    unless @@brands.include?(brand)
      @@brands << brand
      @@cars[brand] = 0
    end
  end

  def initialize(brand)
    if @@brands.include?(brand)
      puts "Creating a new #{brand}"
      @brand = brand
      @@cars[@brand] += 1
      @@total_count += 1
    else
      raise "No such brand: #{brand}"
    end
  end

  def make_mates
    @@cars[brand]
  end
end

Car.add_brand('Honda')
Car.add_brand('Ford')
h = Car.new('Honda')
f = Car.new('Ford')
h2 = Car.new('Honda')
puts f.make_mates
# nono = Car.new('OH NO') # will throw an error
