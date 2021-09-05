string = 'Ruby is a cool language'
puts string[5]  # "i"

puts string[-12] # "o"

puts string[5, 10] # "is a cool "

puts string[5...15] # "is a cool "

puts string['cool lang'] # "cool lang"

puts string['a cool hobalala'] # nil

string['cool'] = 'great' # replaces cool with great

puts string # "Ruby is a great language"

# string['kaka'] = 'OhNo' # will throw string not matched (IndexError)

string['Ruby is a great language'] = 'lala'
puts string
