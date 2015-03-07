class Person
end

class Mathematician < Person
  attr_accessor :first_name
  attr_accessor :last_name

  @type = 'General'
  @@type = 'General'

  class << self
    def type
      @type
    end

    def c_type
      @@type
    end

    def class_method
      puts 'This is a class method.'
    end
  end
end

class Statistician < Mathematician
  AREA_OF_EXPERTISE = 'Mathematics'
  @type = 'Statistician'
  @@type = 'Statistician'
end

p Mathematician.class
p Mathematician.superclass
p Mathematician.type
p Statistician.type
p Mathematician.c_type
p Statistician.c_type

obj = Mathematician.new
begin
  obj.class_method
rescue NoMethodError => e
  p e
end

p ObjectSpace.count_objects
class Physician; end
p ObjectSpace.count_objects

p Mathematician
p obj.singleton_class.methods
