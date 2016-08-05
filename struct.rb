# A srtuct is the very simple class that simplay allow you to encapsulate the attributes and accessor methods
# without defined the expilicit class
require 'date'

StudentDetails = Struct.new(:name, :age, :school, :gender)

student = StudentDetails.new("sandeep", 28, "jspm", "Male")
p student
p student.name ;p  student.age
p student[:school] ;p  student[:gender]

Person = Struct.new(:name, :dob) do
    def age
      Date.today.year - dob
    end
  end

p per = Person.new("sandeep", 1988).age

p "######### Use Sturct in class #####################"

class Student
  attr_accessor :name , :birthday

   Birthday = Struct.new(:day, :month, :year)

  def initialize(opts = {})
    @name = opts[:name]
    @birthday = Birthday.new(opts[:day], opts[:month], opts[:year])
  end
end

p stu = Student.new({:name => "sandeep", :day => "monday", :month => "Feb", :year => 1988})
