class Superclass
  FIND_ME = 'Found in Superclass'
end

module ParentLexicalScope
  FIND_ME = 'Found in ParentLexicalScope'

  module ChildLexicalScope
    class Subclass < Superclass
      p FIND_ME
    end
  end
end
