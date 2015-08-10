#!/usr/bin/ruby
names = Array.new(20)
puts names.size
puts names.length

cNames = Array.new(4,"mac")
puts "#{cNames}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"
nums = Array.[](1,2,3,4,5)
puts "#{nums}"
nums = Array[1,1,2,2,3,4]
puts "#{nums}"

digits = Array(0..9)
puts "#{digits}"

digits = Array(0..9)
num = digits.at(6)
puts "#{num}"