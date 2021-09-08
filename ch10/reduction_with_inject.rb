puts([1, 2, 3, 4].inject(0) { |acc, n| acc + n })
puts([1, 2, 3, 4].reduce(0) { |acc, n| acc + n })
puts([5, 2, 3, 4].reduce { |acc, n| acc + n }) # will take 5 > first element as acc first round
