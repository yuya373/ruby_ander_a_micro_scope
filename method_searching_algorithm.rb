class Person
  attr_accessor :first_name
  attr_accessor :last_name
end

module Employee
end

module Professor
  include Employee
  def lectures; end

  def name
    "Prof. #{super}"
  end
end

class Mathematician < Person
  prepend Professor
  attr_accessor :name
end

ramanujan = Mathematician.new
ramanujan.first_name = 'Srinivasa'
p ramanujan
p Mathematician.ancestors

poincare = Mathematician.new
poincare.name = 'Henri Poincare'

p poincare.name
