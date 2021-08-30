class Person
  attr_accessor :hobbies, :friends
  attr_reader :name

  PEOPLE = []
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def method_missing(method_name, *args)
    method = method_name.to_s
    if method.start_with?('all_with_')
      attr = method.split('_').last
      if Person.public_method_defined?(attr)
        puts hobbies if attr == 'hobbies'
        PEOPLE.each do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end
end

p1 = Person.new('ahmed')
p2 = Person.new('ibrahim')
p1.has_friend(p2)
p1.has_hobby('cycling')
p2.has_hobby('drums')
# p1.all_with_friends(p2)
p2.all_with_hobbies
