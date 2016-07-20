puts "classmethos : when we have perform the perticuler functinality on the class level that time we have used class method \n \n"
print "InstanceMethods : when we have to perform operation on perticuler call then used InstanceMethod \n \n"

class Details
  attr_accessor :name , :age , :company

  p "####  used the options hash take number of parameter ########"
  def initialize(options = {})
    @name = options[:name] || nil
    @age = options[:age] || nil
    @company = options[:company] || nil
  end

  def detail
    # name , age , company is the symbols that are geenrated from attr_accessor methods
    "#{name} is #{age} years and working in #{company}"
  end
end

p d = Details.new({name: "sandeep parhad",  age: 27, company: "cybage"})
p d.detail


p "############# how to use block in class #####################"

class SnapShot
  def authenticate
    p "you are suessfully authenticate"
    yield
  end

  def take_picture
    authenticate { p "Take the pictute" }
  end

  def record_vedio
    authenticate { p "Record the Vedio" }
  end
end

snap = SnapShot.new
snap.take_picture
snap.record_vedio
