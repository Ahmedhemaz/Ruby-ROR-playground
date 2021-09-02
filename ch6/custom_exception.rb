class MyCustomException < RuntimeError
  def initialize
    super('Invalid bla bla bla')
  end
end

begin
  raise MyCustomException
rescue MyCustomException => e
  puts e.backtrace
  puts e.message
end
