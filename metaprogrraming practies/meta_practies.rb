class Message

    METHODS = [:first_instance_method, :second_instance_method, :sandeep_instance_method ]

    METHODS.each do |methods_name|
      define_method methods_name do |arg|
        "#{methods_name} #{arg}"
      end
    end

    p '\n \n \n \n '
    p #### Instance methos is creating the Instance methods ############
    p ##  define_method is use for creating runtime methods in methods  or creating instance methods  in methods for thsi use send becuase define_method is private method
    def creating_instance_method_using_define_methods *methods
      methods.each do |method_name|
        self.class.send :define_method, method_name do |arg|
            "The arg called #{arg}"
        end
      end
    end

  p   Message.instance_methods false #=> [:create_instance_methods]
  p   Message.new.creating_instance_method_using_define_methods 'fork' #=> ["fork"]
  p   Message.instance_methods false #=> [:create_instance_methods, :fork]
  p   Message.new.fork 'emre' #=> "fork emre"

  p '\n \n \n \n '
  p #### Singleton method : the singleton method is method that is define for single object
  p ## This sigleton method for creating instanse methods
  def self.create_instance_methods *methods
    methods.each do |method_name|
      define_method method_name do |arg|
        "#{arg}"
      end
    end
  end

p   Message.singleton_methods #=> [:create_instance_methods]
p   Message.create_instance_methods 'follow' #=> ["follow"]
p   Message.instance_methods false #=> [:follow]
p   Message.new.follow 'emre' #=> "follow emre"




end
