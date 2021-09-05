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
puts(+banner)
puts(-banner)
puts !banner
