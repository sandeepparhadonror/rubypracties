class MethodMessing
  def method_missing(name, *arg)
    # check methods name include method
    if name.to_s =~ /private/
      puts "This #{name} was called with the argument #{arg.join(' ,')}"
    else
      #called the error
      super
    end
  end
end
p m = MethodMessing.new
p m.private_called('check','tweet')
#p m.this_method_not_present('onw', 'check')

p "###############   SELF ################"
p "## the self is current or defulat obhject in ruby #########"

p "##  Self inside class and module definitions ###"

class Test
  puts "here is self"
  p self
  module  TestSelf
    p "seld inside the module"
    p self
  end
  p "agine the self"
  p self
  def test
  p self
  end
end

p ###### dybanamic acalling method ========
s =  "test the String method"

p s.length
p.s.send(:length)
str_obj = s.method(:length)
p str_obj.call
p eval "s.revrse"
