require_relative 'stacklike'

class Suitcase
end

# CargoHold modeling
class CargoHold
  include Stacklike
  def load_and_report(suitcase)
    print 'Loading object: '
    puts suitcase.object_id
    add_to_stack(suitcase)
  end

  def unload
    take_from_stack
  end
end

sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new

cargo_hold = CargoHold.new

cargo_hold.load_and_report(sc1)
cargo_hold.load_and_report(sc2)
cargo_hold.load_and_report(sc3)

cargo_hold.unload

cargo_hold.stack.each do |s|
  puts s.object_id
end
