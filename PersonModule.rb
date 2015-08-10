module Head
	def shakeHead
		puts "shake head"
	end

	def nodHead
		puts "nod head"
	end
end

module Hand
	def shakeHand
		puts "shake hands"
	end
end

module Body
	def jump
		puts "jump"
	end
end

module Foot
	def kick
		puts "kick"
	end
end

class Person
	include Head
	include Hand
	include Body
	include Foot

	@name

	def initialize(_name)
		@name = _name
	end

	def answerNo
		puts "#{@name} say no"
		shakeHead
		shakeHand
		kick
	end

	def answerYes
		puts "#{@name} say yes"
		nodHead
		jump
	end
end

p = Person.new("jack")
p.answerNo
puts ""
p.answerYes