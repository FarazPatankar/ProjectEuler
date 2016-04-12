# *****PROBLEM*****

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

# *****PROBLEM*****

def power_digit_sum(power)
	num = 2 ** power

	sum = 0
	num.to_s.chars.each do |n|
		sum += n.to_i
	end

	sum
end

puts power_digit_sum(1000)