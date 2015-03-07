module Professor
  def lectures; end
end

class Mathematician
  attr_accessor :first_name
  attr_accessor :last_name

  include Professor
end

fermat = Mathematician.new
fermat.first_name = 'Pierre'
fermat.last_name = 'de Fermat'
p fermat
p fermat.methods.sort

module Professor
  def primary_classroom; end
end

p fermat.methods.sort

module Employee
  def hire_date; end
end

module Professor
  include Employee
end

p fermat.methods.sort
