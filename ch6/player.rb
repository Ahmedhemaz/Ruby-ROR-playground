class Roster
  attr_accessor :players
end

class Player
  attr_accessor :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end
end

p1 = Player.new('Ahmed', 'Forward')
p2 = Player.new('Mohamed', 'Guard')
r = Roster.new
r.players = [p1, p2]

puts "Forward: #{r.players.first.name}" if r.players.first.position == 'Forward'
r.players = []
if r.players&.first&.position == 'Forward'
  puts "Defender: #{r.players&.first&.name}"   # & before .  to avoid no method errors
end
