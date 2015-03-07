require 'benchmark'

ITERATIONS = 1_000_000

GC.disable

obj = ITERATIONS.times.map { Class.new.new }

Benchmark.bm do |b|
  20.times do |count|
    b.report("adding instance variable number #{count + 1}") do
      ITERATIONS.times do |n|
        obj[n].instance_variable_set("@var#{count}", "value")
      end
    end
  end
end
