#!/usr/bin/ruby
puts "打开和关闭文件"
# aFile = File.new("PersonModule.rb", "r")
# puts aFile.sysread(20)
# aFile.close

homePath = "/Users/sfwan/Documents/Ruby"

aFile = File.new("#{homePath}/FileIO.rb", "r")
if aFile
	content = aFile.sysread(10)
	puts content
else
	puts "Unable to open file !"
end

# w+/r+ 与 a+ 的区别在于 a+的文件指针指在文件的结尾
=begin
aFile = File.new("#{homePath}/File.rb", "a+")
if aFile
	# var = gets
	# aFile.syswrite(var)
	# aFile.syswrite("\n#" + var)
else
	puts "Unable to open file !"
end
=end
aFile = File.new("#{homePath}/input.txt", "r+")
if aFile
	aFile.syswrite("ABCDEF")
	aFile.each_byte {|ch| putc ch; putc ?.}
else
	puts "Unable to open file!"
end
puts ""
puts "IO.readlines"
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

puts ""
puts "IO.foreach"
IO.foreach("input.txt") {|block| puts block}

puts ""
puts "重命名和删除文件"
# File.rename("text1.txt", "test2.txt")
# File.delete("text2.txt")
puts ""

puts "文件模式和所有权"
# file = File.new("test.txt", "w")
# file.chmod(0075)
puts ""

puts "文件查询"
File.open("File.rb") if File::exists?("File.rb")

# File.file?("text.txt")

# File::directory?("/usr/local/bin")

# File::directory?("file.rb")

# File.readable?("test.txt")
# File.writable?("test.txt")
# File.executable?("test.txt")

# File.zero?("test.txt")

# File.size?("test.txt")

# File::ftype("test.txt")

# File::ctime("test.txt")
# File::mtime("test.txt")
# File::atime("test.txt")

puts ""
puts "目录"
puts Dir.pwd
puts Dir.entries("/usr/bin").join('')
Dir.foreach("/usr/bin") do |entry|
	puts entry
end

# Dir.mkdir("#{homePath}/mynewdir", 755)
# Dir.delete("#{homePath}/mynewdir")
puts ""

puts "创建文件和临时目录"
require 'tmpdir'
	tempfilename = File.join(Dir.tmpdir, "tingtong")
	tempfile = File.new(tempfilename, "w")
	tempfile.puts "This is a temporary file"
	tempfile.close
	File.delete(tempfilename)

require 'tempfile' 
	f = Tempfile.new('tingtong')
	f.puts "Hello"
	puts f.path
	f.close


