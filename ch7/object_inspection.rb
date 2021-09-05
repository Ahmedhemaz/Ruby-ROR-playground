require '../ch4/first_module'

class Banner
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def +@
    text.upcase
  end

  def -@
    text.downcase
  end

  def !
    text.reverse
  end
end

banner = Banner.new('Hello World!')

class Banner
  include FirstModule

  def added_method
    puts 'added_method check'
  end
end

puts banner.methods.sort
puts banner.methods.include?(:ruby_version)
