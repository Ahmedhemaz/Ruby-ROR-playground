require './first_module'
class ModuleTester
  include FirstModule
end

obj = ModuleTester.new
obj.ruby_version
