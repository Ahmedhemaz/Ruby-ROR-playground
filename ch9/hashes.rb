hash = { red: 'ruby', white: 'diamond', green: 'emerald' }
hash.each_with_index { |(key, value), i| puts "pari #{i} is: #{key}/#{value}" }
puts '============each===================='
hash.each { |key, value| puts "#{key}: #{value}" }

hash.each.with_index { |(key, value), i| puts "#{i} => #{key}:#{value}" }
