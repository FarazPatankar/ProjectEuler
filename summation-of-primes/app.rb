# *****PROBLEM*****

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# *****PROBLEM*****

start_time = Time.now

def sum_of_primes(max_range)
	sum = 2
	(3..max_range).step(2).each do |num|
		counter = 0

		(2..num-1).each do |i|
			if num % i == 0
				counter += 1
				break
			end

			# if counter == 1
			# 	break
			# end
		end

		if counter < 1
			sum += num
		end
	end

	sum
end

puts sum_of_primes(1000)
puts Time.now - start_time