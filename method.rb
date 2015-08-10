#!/usr/bin/ruby
def test(a1="Ruby", a2="Perl")
	puts "The programming language is #{a1}"
	puts "The programming language is #{a2}"
end
test "C", "C++"
test
puts "\n"

puts "带返回值的方法"
puts "每一个方法返回默认值,这个默认值将是最后一个语句的值"

def test
	i = 100
	j = 10
	k = 0
end
a = test
puts "return value is a = #{a} \n"
puts "Ruby 的 return 语句用于从一个Ruby方法返回一个或多个值\n"
puts "return [expr[','expr...]] \n"
puts "\n"

def method1
	i = 100
	j = 200
	k = 300
	return i,j,k
end

var = method1
var.each do |i|
	puts i
end
puts "\n"

puts "可变目的参数"
def sample(*test)
	puts "The number of parameters is #{test.length}"
	for i in 0..test.length
		puts "The parameters are #{test[i]}"
	end
	puts "-------------"
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"
puts ""

puts "类方法"
class Accounts
	def reading_charge
		puts "charge 10"
	end
	def Accounts.return_date	#类方法
		puts "2015-02-04"
	end
end
account = Accounts.new()
account.reading_charge()
Accounts.return_date()
puts ""

puts "alias 别名定义 只能定义 方法 或全局变量"