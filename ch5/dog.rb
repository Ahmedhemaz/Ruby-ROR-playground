class Dog
  attr_accessor :dog_years
  attr_reader :age

  def age=(years)
    @age = years
    self.dog_years = years * 7 # to call private setter with =
  end
  #   def age=(years)
  #     @age = years
  #     dog = self
  #     dog.dog_years = years * 7 # will throw an error
  #   end
  private :dog_years=
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years"
