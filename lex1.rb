require 'ripper'
require 'pp'

code = <<-STR
  10.times do |n|
    pp n
  end
STR

pp code
pp Ripper.lex(code)
