# *****PROBLEM*****

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# *****PROBLEM*****


def sum_of_multiples(max_range)
	sum = 0

	(1..(max_range - 1)).each do |num|
		if num % 3 == 0 || num % 5 == 0
			sum += num
		end
	end

	sum
end

puts sum_of_multiples(1000)