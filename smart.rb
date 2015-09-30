require 'pry'
class SmartPlayer

	def get_guess(number)
		x = 1 
		y = 100
		guess = rand(x..y)
		until guess == number
			if guess < number
				x = guess
			elsif guess > number
				y = guess
			end
			guess = rand(x..y)
		end
		guess
	end
end
