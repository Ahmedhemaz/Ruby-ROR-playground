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

# Enter your code here

def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(str, words_arr)
  words_arr.each { |word| str[word] = strike(word) }
  puts str
end

mask_article('Joy fond many ham high seen this.', %w[fond ham])

def prime?(num)
  is_prime = true
  (2...num).each do |n|
    if num % n == 0
      is_prime = false
      break
    end
  end
  is_prime
end

puts prime? 22
