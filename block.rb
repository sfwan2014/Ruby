#!/usr/bin/ruby
puts "块 block"
puts "yield 语句"
def test 
	puts "You are in the method"
	yield
	puts "You are again back to the method"
	yield
end
test {puts "You are in the block"}

puts ""
def method1
	yield 5
	puts "You are in the method test"
	yield 100
end
method1{|i| puts "You are in the blcok #{i}"}
puts ""

puts "块和方法"
def method2
	yield
end
method2{puts "Hello world"}

puts ""
def method3(&block)
	block.call
end
method3{puts "Hello world"}
puts ""

puts "BEGIN 和 END 块"
puts "----------------"
BEGIN { 
  # BEGIN block code 
  puts "BEGIN code block"
} 

END{
	# END block code
	puts "END block code"
}
# MAIN Block code 
puts "MAIN Block code "
