class Bicycle
  attr_accessor :seats, :wheels, :gears

  def initialize(gears = 1)
    @seats = 1
    @wheels = 2
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize
    super
    @seats = 2
  end
end

p Tandem.new
