# *****PROBLEM*****

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# *****PROBLEM*****

def smallest_multiple(max_range)
	number = max_range
	counter = 1
	while counter != max_range
		counter = 1
		(2..max_range).each do |i|
			if number % i == 0
				counter += 1
			end
		end
		number += max_range
	end

	number - max_range
end

puts smallest_multiple(20)