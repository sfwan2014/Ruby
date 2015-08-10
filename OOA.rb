=begin
Class Vehicle{
	Number no_of_wheels
	Number horsepower
	Characters type_of_tank
	Number Capacity
	Function speeding{

	}
	Function driving{

	}
	Function halting{

	}
}
=end
# $ d = 4			#全局变量
class Customer
	# a = 0			#局部变量
	# @b = 2		#实例变量
	# @@c = 3		#类变量

	@@no_of_customers=0
	def initialize(id, name, addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
end

cust1=Customer.new("1","jhon","wisdom apartments, ludhiye")
cust2=Customer.new("2","Poul","New Empire road, Khandala")

=begin
class Sample
	def function
		statement 1
		statement 2
	end
end
=end

class Sample 
	def hello
		puts "hello ruby!"
	end
end
# Now using above class to create objects
object = Sample.new
object.hello

