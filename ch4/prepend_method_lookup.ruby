module Hello
  def greeting
    puts 'Hello From module => Hello'
  end
end

class Person
  prepend Hello  # will look for greeting from module first
  def greeting
    puts 'Hello from Person Class'
  end
end

obj = Person.new
obj.greeting

puts Person.ancestors
