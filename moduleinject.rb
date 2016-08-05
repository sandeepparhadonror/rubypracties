# [1,2,3,4].inject(5) {|result, elemet| p result + elemet }

  #  Simple user class that called the Greting module.
module GreetingInclude

  # included  metood hook are called for getting InstanceMethods and ClassMethods
  def self.included(klass)
    klass.extend(ClassMethod)
    klass.include(InstanceMethods)
  end

  # included methos called
  module InstanceMethods
    def hello
     p "Hello ruby do thr module"
    end
    def by
      p "OK we on ethe  moduel"
    end
  end
 # class method called
  module ClassMethod
    def wrork_class_method
      p "inside the greeting class method"
    end
  end

end

module GreetingExtend
   def self.extended(klass)
     klass.include(InstanceMethods)
   end

   def class_method_1
    p "class method 1"
   end

   module InstanceMethods

     def work_instance_method
      p "instance methos called"
     end

   end

end


class UserInclude
  include GreetingInclude
end

 class UserExtend
   extend GreetingExtend
 end


p "################  inculde the module  ########################"
 UserInclude.new.hello
 UserInclude.new.by
 UserInclude.wrork_class_method
p "################  extend the module  ########################"
UserExtend.class_method_1
UserExtend.new.work_instance_method
