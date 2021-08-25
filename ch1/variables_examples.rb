puts $stdin
puts $LOAD_PATH

# freezing obj

FIRST_NAME = 'AHMED'.freeze
puts FIRST_NAME
FIRST_NAME = 'MOHAMED'
puts FIRST_NAME

arr = %w[a b c]
arr.freeze
arr2 = arr
puts arr2
arr2[0] = 'd'
puts arr2
arr[0] = 'd'
