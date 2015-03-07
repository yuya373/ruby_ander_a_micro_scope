class Mathematician
  attr_accessor :first_name
  attr_accessor :last_name
end

euler = Mathematician.new

p euler

euler.first_name = 'Leonhard'
euler.last_name = 'Euler'

euclid = Mathematician.new
euclid.first_name = 'Euclid'

p euler
p euclid

p 'string'.class
p 1.class
p :symbol.class

str = 'some string value'
p str.instance_variables
str.instance_variable_set('@val1', 'value one')
p str.instance_variables
p str.instance_variable_set('@val2', 'value two')
p str.instance_variables
