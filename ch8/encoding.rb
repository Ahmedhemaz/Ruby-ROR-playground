# input = 'asd'
# puts input.encoding
# puts input.encode!('US-ASCII')
# puts input.encoding

def count_multibyte_char(str)
  counter = 0
  str.each_byte { |byte| counter += 1 if byte > 165 }
  puts counter
end

count_multibyte_char('¥1000')

def process_text(arr)
  arr.map(&:strip).join(' ')
end

puts process_text(["Hi, \n", ' Are you having fun?    '])
