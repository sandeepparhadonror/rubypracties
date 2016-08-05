Array.class_eval do
  define_method(:second, ->{self.[](1)})
end

Array.instance_eval do
  define_method(:last, ->{self.[].(2)})
end

p [11,22,33,44].second
