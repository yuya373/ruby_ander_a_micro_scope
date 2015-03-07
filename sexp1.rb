require 'ripper'
require 'pp'
code = <<-STR
10.times do |n|
puts n
end
STR

pp code
pp Ripper.sexp code
