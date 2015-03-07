class MyClass
  SOME_CONTENT = 'Some value...'
end

class Subclass < MyClass
  p SOME_CONTENT
end

module Namespace
  SOME_CONSTANT = 'some Value...'

  Subclass = Class.new

  Subclass.class_eval do
    p SOME_CONSTANT
    def self.p_huga
      p 'Huga!'
    end
  end

  def Subclass.p_hoge
    p 'Hoge!'
  end

  class << Subclass
    def p_fuga
      p 'Fuga!'
    end
  end

  Subclass.p_huga
  Subclass.p_hoge
  Subclass.p_fuga
end
