class SizeMatter
  include Comparable
  attr :str
  def <=>(other)
    str.size <=> other.str.size
  end

  def initialize(str)
    @str = str
  end

  def sandeep
    @str
  end

  # def inspect
  #   @str
  # end

end


s1 = SizeMatter.new('a')
s2 = SizeMatter.new('bb')
s3 = SizeMatter.new('ccc')
s4 = SizeMatter.new('dddd')

p s1 < s2
p s4.between?(s1, s3)
p s4.sandeep
