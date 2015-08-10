#!/usr/bin/ruby

# while
puts "----------while----------"
$i=0
$num=5
while $i < $num do
	puts("Inside the loop i = #{$i}")
	$i += 1
end
puts "\n"

# code while condition
puts "----------code while condition----------"
$i=0
$num=5
begin
	puts("Inside the loop i = #{$i}")
	$i += 1
end while $i < $num
puts "\n"

# until 
puts "----------until----------"
$i=0
$num=5
until $i > $num do 
	puts("Inside the loop i = #{$i}")
	$i += 1
end
puts "\n"

# for 
puts "----------for----------"
for i in 0..5
	puts "Value of local variable is #{i}"
end

puts "-------------"
arr=1..5
arr.each do |i|
# (1..5).each do |i|
	puts "value of local is #{i}"
end	
puts "\n"

# break
puts "----------break----------"
for i in 0..5
	if i > 2 then
		break
	end
	puts "value of local variable is #{i}"
end
puts "\n"

# next
puts "----------next----------"
for i in 0..5
	if i < 2 then
		next
	end
	puts "value of local variable is #{i}"
end
puts "\n"

# redo
puts "----------redo----------"
# for i in 0..5
# 	if i < 2 then
# 		puts "value of local variable is #{i}"
# 		redo
# 	end
# end
puts "\n"

# retry
puts "----------retry----------"
# for i in 0..5
# 	retry if i > 2
# 		puts "value of local variable is #{i}"
# end