obj = Object.new

def obj.multi_args(*x)
  x.each do |arg|
    puts arg
  end
end

obj.multi_args
obj.multi_args 1, 2, 3

puts '==============================one arg exception==============================='
def obj.one_arg(_x)
  puts 'I require one and only one argument!'
end
obj.one_arg(1, 2, 3)
