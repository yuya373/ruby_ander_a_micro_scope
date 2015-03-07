require 'ripper'
require 'pp'

code = <<-str
10.times do |n|
  puts n/4 + 6
end
str

pp code
pp Ripper.lex(code)
