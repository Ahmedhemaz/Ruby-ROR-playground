# def args_unleashed(a, b = 1, *c, d, e)
#   puts 'Arguments'
#   p a, b, c, d, e
# end

# args_unleashed 1, 2, 3, 4, 5

def args_unleashed
  puts 'Arguments'
  yield(1, 2, 3, 4, 5)
end

args_unleashed do |a, b = 1, *c, d, e|
  puts 'Arguments'
  p a, b, c, d, e
end

puts '=============block_scope_demo===================='

def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

block_scope_demo

def block_scope_demo2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

block_scope_demo2

def block_local_params
  x = 100
  [1, 2, 3].each do |x|
    puts "Param x is #{x}"
    x += 10
    puts "Reassigned to x in block with +10 now x = #{x}"
  end
  puts "Outer x = #{x}"
end
block_local_params
