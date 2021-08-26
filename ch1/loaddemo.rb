puts 'This is the first (master) program file.'
load 'loadee.rb' # if not found will look for it in $LOAD_PATH
load './sub-ch1/loadee2.rb' # if not found will look for it in $LOAD_PATH
puts 'And back again to the first file.'

puts 'This is with require'
require './loadee' # if not found will look for it in $LOAD_PATH
require './sub-ch1/loadee2' # if not found will look for it in $LOAD_PATH
puts 'And back again to the first file.'
