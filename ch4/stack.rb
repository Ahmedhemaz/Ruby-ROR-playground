require_relative 'stacklike'
class Stack
  include Stacklike
end

obj1 = Object.new
obj2 = Object.new
obj3 = Object.new
stack = Stack.new

stack.add_to_stack(obj1)
stack.add_to_stack(obj2)
stack.add_to_stack(obj3)

p stack

stack.take_from_stack

p stack
