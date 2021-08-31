class Parent
  @@value = 100
end

class Child < Parent
  @@value = 200
end

class Parent
  puts @@value # the scope of class vars is the entire class tree hierarchy that's why it's dangerous
end
