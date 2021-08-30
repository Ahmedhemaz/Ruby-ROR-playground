obj = Object.new

def obj.method_missing(_m, *_args)
  puts 'Overrided method messing reporting...'
end
obj.blah
