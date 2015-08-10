#!/usr/bin/ruby
# module Module
# 	PI = 3.141592654
# 	def Trig.sin(x)
# 		#...
# 	end
# 	def Trig.cos(x)
# 		#...
# 	end
# end

# module Moral
# 	VERY_BAD = 0
# 	BAD = 1
# 	def Moral.sin(badness)
# 		#...
# 	end
# end

require "./support"

class Decade
include Week
	no_of_yrs=10
	def no_of_months
		puts Week::FIRST_DAY
		number=10*12
		puts number
	end
end

d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

