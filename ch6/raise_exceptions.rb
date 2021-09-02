def fussy_method(n)
  raise "Invalid number must be less than 10 #{n}" unless n < 10

  n
end

begin
  puts fussy_method(10)
rescue RuntimeError => e
  puts 'Thas was not an acceptable number'
  puts e.backtrace
  puts e.message
ensure
  puts 'Finally'
end
