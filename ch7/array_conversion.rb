computer = Struct.new(:os, :manufacturer)
laptop1 = computer.new('linux', 'Lenovo')
laptop2 = computer.new('os x', 'Apple')
[laptop1, laptop2].map { |laptop| p laptop.to_a }

array = [1, 2, 3, 4, 5]
p [*array]

p [array]

def combine_names(first_name, last_name)
  "#{first_name}  #{last_name}"
end

names = %w[Ahmed Ibrahim]
puts combine_names(*names)
# puts combine_names(names) # will throw an arguments error
