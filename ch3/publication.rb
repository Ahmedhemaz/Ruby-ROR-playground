# inheritance modeling
class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

magazine = Magazine.new
magazine.publisher = 'Ahmed'
magazine.editor = 'Ibrahim'

puts "The publisher is #{magazine.publisher} and the editor is #{magazine.editor}"

class Ezine < Magazine
end

puts '================  Anonymous classes  ========================='

c = Class.new do
  def say_hello
    puts 'Hello!'
  end
end

my_instance = c.new

my_instance.say_hello
