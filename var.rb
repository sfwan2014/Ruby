#!/usr/bin/ruby
$global_variable = 10  #未初始化的全局变量，默认为零
puts "全局变量示例"
class Class1 
	def print_global
		puts "Global variable in Class1 is #{$global_variable*2}"
	end
end
class Class2
	def print_global
		puts "Global variable in Class2 is #{$global_variable}"
	end
end

class1Obj = Class1.new
class1Obj.print_global
class2Obj = Class2.new
class2Obj.print_global
puts "\n"
puts "------------------"

puts "实例变量示例"

class Customer
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	
	def display_details()
		puts "Customer id #{@cust_id}"
		puts "Customer name #{@cust_name}"
		puts "Customer addr #{@cust_addr}"
	end
end
# Create Objects
cust1=Customer.new("1","Jhon","Wisdom Apartments, Ludhiye")
cust2=Customer.new("2","Poul","New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()
puts "\n"
puts "------------------"

puts "类变量"
class Person 
	@@no_of_persons=0
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	def display_details()
		puts "Person id #{@cust_id}"
		puts "Person name #{@cust_name}"
		puts "Person addr #{@cust_addr}"
	end
	def total_no_of_persons()
		@@no_of_persons += 1
		puts "Total number of person: #{@@no_of_persons}"
	end
end

# Create Objects
cust1=Person.new("1","Jhon","Wisdom Apartments, Ludhiye")
cust2=Person.new("2","Poul","New Empire road, Khandala")
# Call Methods
cust1.total_no_of_persons()
cust2.total_no_of_persons()
puts "\n"
puts "------------------"

puts "常量"
class Example
	VAR1 = 100
	VAR2 = 200
	def  show
		puts "value of first Constant is #{VAR1}"
		puts "value of second Constant is #{VAR2}"
	end
end

# Create Objects
object=Example.new()
object.show
puts "\n"
puts "------------------"

puts 'escape using "\\"'
puts 'That\'s riht'
puts "\n"
puts "------------------"

puts "数组"
ary = ["fred",10,3.14,"This is a string","last element",]
ary.each do |i|
	puts i
end
puts "\n"
puts "------------------"

puts "哈希"
hsh = colors = {"red"=>0xf00, "green"=>0x0f0, "blue"=>0x00f}
hsh.each do |key, value|
	print key, " is ", value,"\n"
end
puts "\n"
puts "------------------"

puts "范围"
(10..15).each do |n|
	print n,' '
end





