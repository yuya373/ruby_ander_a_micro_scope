def message_function
  str = 'The quick brown fox'
  func = lambda do |animal|
    puts "#{str} jumps over the lazy #{animal}"
  end
  str = 'The sly brown fox'
  func
end

function_value = message_function
function_value.call('dog')

i = 0
increment = lambda do
  puts "incrementing from #{i} to #{i + 1}"
  i += 1
end

decrement = lambda do
  puts "decrementing from #{i} to #{i - 1}"
  i -= 1
end

increment.call
decrement.call
increment.call
increment.call
decrement.call
