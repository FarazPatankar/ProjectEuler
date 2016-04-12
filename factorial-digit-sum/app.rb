# *****PROBLEM*****

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

# *****PROBLEM*****

def factorial_digit_sum(num)
	factorial = 1
	num.downto(1).each do |n|
		factorial *= n
	end

	sum = 0
	factorial.to_s.chars.each do |digit|
		sum += digit.to_i
	end

	sum
end

puts factorial_digit_sum(100)