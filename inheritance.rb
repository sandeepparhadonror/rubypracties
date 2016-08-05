class Foo
 def self.test; p "test wa"; end
end

class Bar < Foo
  p self
  p test
end

#b = Bar.new.test
