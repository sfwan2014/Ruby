#!/usr/bin/ruby
puts "并行负值"
a, b, c = 10, 20, 30
puts "#{a},#{b},#{c}"
puts "\n"
a, b, c = c, b, a
puts "#{a},#{b},#{c}"
puts "\n"

puts "位运算符"
a = 0b00111100
b = 0b00001101

puts a&b
puts a|b
puts a^b
puts ~a
puts "\n"

puts "双冒号“:”运算符"
MR_COUNT = 0
module Foo
	MR_COUNT = 0
	::MR_COUNT = 1
	MR_COUNT = 2
end

puts MR_COUNT	# 全局变量
puts Foo::MR_COUNT	#模块内变量
puts "\n"


CONST = ' out there '
class Inside_one 

	CONST = proc {' in there '}
	def where_is_my_CONST
		::CONST + ' inside one '
	end
end

class Inside_two
	CONST = ' inside two '
	def where_is_my_CONST
		CONST
	end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST








