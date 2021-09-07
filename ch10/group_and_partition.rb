colors = %w[red orange yellow green blue indigo violet]
p(colors.group_by(&:size))

class Person
  attr_accessor :age

  def initialize(options)
    self.age = options[:age]
  end

  def teenager?
    (13..19).include?(age)
  end
end

people = 10.step(25, 3).map { |age| Person.new(age: age) }
p(people.partition(&:teenager?))
