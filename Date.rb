#!/usr/bin/ruby
time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym
time2 = Time.now
puts "Current Time : " + time2.inspect

puts time1.year
puts time1.month
puts time1.day
puts time1.wday
puts time1.yday
puts time1.hour
puts time1.min
puts time1.sec
puts time1.usec
puts time1.zone

puts ""
puts "Time.utc Time.gm Time.local"

time = Time.new
values = time.to_a
p values

puts Time.utc(*values)

time = Time.new
puts "zone : " + time.zone
puts "utc_offset : #{time.utc_offset}"
puts "isdst :  #{time.isdst}"
puts "utc? : #{time.utc?}"
puts "localtime : #{time.localtime}"
puts "gmtime : #{time.gmtime}"
puts "getlocal : #{ time.getlocal}"
puts "getutc : #{time.getutc}"


puts "格式化时间和日期"
time = Time.new
puts "to_s : #{time.to_s}"
puts "ctime : #{time.ctime}"
puts "localtime : #{time.localtime}"
puts "strftime : #{time.strftime("%Y-%m-%d %H:%M:%S")}"
	