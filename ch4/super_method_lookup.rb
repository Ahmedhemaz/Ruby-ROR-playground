module M
  def report
    puts 'report from module => M'
  end
end

class C
  include M
  def report
    puts 'report from class => C'
    puts 'will triger report from module M cause of super.....'
    super
    puts 'back from report from module M cause of super'
  end
end

obj = C.new
obj.report
