class C
  def set_v
    @v = "I'm an Instance Variable and i'm belong to any instance of class C"
  end

  def show_var
    puts @v
  end

  def self.set_v
    @v = "I'm an Instance Variable and i'm belong to class C"
  end
end

C.set_v
c = C.new
c.set_v
c.show_var
p C
