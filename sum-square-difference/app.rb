# *****PROBLEM*****

# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# *****PROBLEM*****

def sum_square_diff(max_range)
	sum_of_squares = 0
	square_of_sum = 0

	(1..max_range).each do |num|
		sum_of_squares += num*num
		square_of_sum += num
	end

	square_of_sum*square_of_sum - sum_of_squares
end

puts sum_square_diff(100)