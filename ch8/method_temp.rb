def convert_temp(tmp, input_scale:, output_scale: 'celsius')
  case input_scale
  when 'fahrenheit'
    output_scale == 'kelvin' ? c2k(f2c(tmp)) : f2c(tmp)
  when 'kelvin'
    output_scale == 'fahrenheit' ? f2c(k2c(tmp)) : k2c(tmp)
  when 'celsius'
    output_scale == 'fahrenheit' ? c2f(tmp) : c2k(tmp)
  end
end

def c2f(c)
  (c.to_f * 9 / 5) + 32
end

def f2c(f)
  (f.to_f − 32) * 5 / 9
end

def c2k(c)
  c + 273.15
end

def k2c(k)
  k - 273.15
end

puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
