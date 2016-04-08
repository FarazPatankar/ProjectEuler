# *****PROBLEM*****

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# *****PROBLEM*****

def find_nth_prime(n)
	i = 2
	nth_prime = 0

	while nth_prime < n
		counter = 0
		(2..i).each do |num|
			if i % num == 0
				counter += 1
			end
		end
		if counter < 2
			nth_prime += 1
		end
		i += 1
	end
	i - 1
end

puts find_nth_prime(10001)