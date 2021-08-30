# module_inheritance modeling
module M
  def report
    puts 'report from Module => M'
  end
end

class C
  include M
end

class D < C
end

obj = D.new
obj.report
