def normal_method_parameter_passing (name , publisher = nil, tags =  [] )
  { book: name , publisher: publisher, tags: tags}
end

p normal_method_parameter_passing "book1"
p normal_method_parameter_passing "book2", "sandeep", ["lol", "hoo"]
p normal_method_parameter_passing "book3", nil, ["text"]
p "####### Just pass book name , tags but get wromng oputs :) :) ########"
p normal_method_parameter_passing "book4", ["abc", "sassa"]


p "### Use another ways to passing the parameter in methos : like :  optional hash ########"

def optional_hash_parameter_passing (name , options = {})
  publisher = options[:publisher] || nil
  tags = options[:tags] || []

  { book: name, publisher: publisher, tags: tags}
end

p optional_hash_parameter_passing "book1"
p optional_hash_parameter_passing "book2", { :tags => ["check", "array", "passing"] }
p optional_hash_parameter_passing "book3", { :publisher => "testatest1", :tags => ["test1", "restetst"]}

p "####### new Ruby 2 ways keyword paramet #########"

def new_methos_defination_ruby_two (name , publisher: nil, tags: [])
  { book: name, publisher: publisher, tags: tags}
end

p new_methos_defination_ruby_two "bookwa1", tags: ["test1", "checwa"]
p new_methos_defination_ruby_two "bookwa1", publisher: "publisher"

p "#### The Splat Operator ###########"

def single_splat_operator (name, *tags)
  {book: name, tags: tags}
end

p single_splat_operator "single1", "tags1", "tags2", "tags3"

p "###### The Double Splat Operator ##############"

def double_splat_operator (name, *tags, **meta)
  {book: name, tag: tags, meta: meta}
end

p double_splat_operator "doucble", "dobuletag1", "doubletag2"
p double_splat_operator "SigleParamter", "Array1", "Array2", key1: "value1", key2: "value2"
p double_splat_operator nil

p "########### cross check #############"

def test (*test, name)
  {name: name, test: test}
end

p test "test1", "test2",  "test3", "sandeep"

p " Always pus splat in * and ** order "
