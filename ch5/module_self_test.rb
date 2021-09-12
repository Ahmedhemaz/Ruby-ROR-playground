module M
  def self.included(_base)
    puts 'Triggered when module is included'
  end
end

class C
  include M
end

# c = C.new
