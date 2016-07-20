string_array = ["we", "try", "to", "check", "some", "ruby", "array", "methods"]
number_array = [1 ,2, 3, 4, 5, 6]
sentance_array = %w[ this is sendtance in ruby array ]
data = ""

p sentance_array.reverse_each { |sen|  data += "#{sen} "  }
p number_array.reverse_each { | num |  number_array.push num }
p string_array.reverse_each { | word|  string_array.push word }

p "######## Selecting Items from an Array ##############"

p number_array.uniq.select { |n| n > 3 }

p number_array * " ,  "

p "##### Block with array #############################"

class Array
  def reverse_each
    reverse.each do | item |
    yield item
    end
  end
end

[1,2,3,4,5].reverse_each { |num| puts num }
