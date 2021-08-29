# peron model
class Person
  def name=(name)
    puts 'setting person\'s name'
    @name = name
  end

  def name
    puts 'getting person\'s name'
    @name
  end
end

person = Person.new
person.name = 'Ahmed'
puts person.name
