class Car
  attr_accessor :brand

  class << self
    attr_writer :total_count

    def total_count
      @total_count ||= 0
    end

    def cars=(brand)
      @cars ||= {}
      @cars[brand].nil? ? @cars[brand] = 0 : @cars[brand] += 1
    end

    def cars(brand)
      @cars[brand]
    end

    def brands
      @brands ||= []
    end

    def brands=(brand)
      @brands.nil? ? @brands = [] : @brands << brand
    end

    def add_brand(brand)
      unless brands.include?(brand)
        self.brands = brand
        self.cars = brand
      end
    end
  end

  def initialize(brand)
    if self.class.brands.include?(brand)
      puts "Creating a new #{brand}"
      @brand = brand
      self.class.cars = @brand
      self.class.total_count += 1
    else
      raise "No such brand: #{brand}"
    end
  end

  def make_mates
    self.class.cars(brand)
  end
end

Car.add_brand('Honda')
Car.add_brand('Ford')
h = Car.new('Honda')
f = Car.new('Ford')
h2 = Car.new('Honda')

puts f.make_mates
# nono = Car.new('OH NO') # will throw an error

class Hybird < Car
end

Hybird.add_brand('Honda')
Hybird.add_brand('Ford')
h3 = Hybird.new('Honda')
f2 = Hybird.new('Ford')
puts " Car Class total_count = #{Car.total_count}"
puts " Hybird Class total_count = #{Hybird.total_count}"
