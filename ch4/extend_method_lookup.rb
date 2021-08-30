module Convertible
  def c2f(celsius)
    celsius * 9.0 / 5 + 32
  end

  def f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

class Thermometer
  extend Convertible  # will make the methods a class method
end

puts Thermometer.c2f(30)
puts Thermometer.f2c(86.0)
