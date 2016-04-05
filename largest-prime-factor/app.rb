# *****PROBLEM*****

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# *****PROBLEM*****

def largest_prime_factor(number)
	divisor = 2
	largest_prime_factor = 0

	while divisor <= number
		if number % divisor == 0
			while number % divisor == 0
				number = number / divisor
				largest_prime_factor = divisor
				divisor += 1
			end
		end

		divisor += 1
	end

	largest_prime_factor
end

puts largest_prime_factor(600851475143)