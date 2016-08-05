class MyClass
  def self.capitaliaze_name
      name.upcase
  end
end

print "Class method called calss name is : #{MyClass.capitaliaze_name} \n"

class MyClass1;end
def MyClass1.cap_name
  name.upcase
end

MyClass11 = Class.new

print "Other ways calling class methods #{MyClass1.cap_name} \n "

p  ## Singleton methods ###########

class SingletonMethods
  def method1
    p "methods111"
  end

  def methods2
    p "methods2222222"
  end
end


p sm = SingletonMethods.new
p sm.method1
p  #####  create he single ton methods #####
p stm = SingletonMethods.new
def stm.singleton_method_create
  p "singleton"
end

p  ######## create the singleton Class ########################

p sc1 = SingletonMethods.new
p sc2 = SingletonMethods.new

sgn_class = ( class << sc1 ; self; end )
