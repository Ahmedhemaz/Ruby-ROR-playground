begin
  1 / 0
rescue StandardError => e
  puts e
ensure
  puts 'Ensure'
end

def open_user_file
  print 'File to open: '
  file_name = gets.chomp
  fh = File.open(file_name)
  fh.close
rescue StandardError
  puts 'Could\'t open the file'
end

open_user_file

def divide_by_zero
  print 'Enter a number: '
  n = gets.to_i
  #   binding.irb # to debug
  begin
    result = 100 / n
  rescue ZeroDivisionError
    puts 'Divided by zero ya 3aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaam'
    return
  end
  puts "100/#{n} is #{result}"
end

divide_by_zero
