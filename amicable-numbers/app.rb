# *****PROBLEM*****

# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

# *****PROBLEM*****

timer_start = Time.now

def amicable_numbers(max_range)
	amicable_numbers = []
	(2..(max_range - 1)).each do |num|
		second_num = 0
		(1..(num/2)).each do |n|
			if num % n == 0
				second_num += n
			end
		end

		sum_of_divisors = 0
		(1..(second_num/2)).each do |i|
			if second_num % i == 0
				sum_of_divisors += i
			end
		end

		if sum_of_divisors == num && num != second_num
			amicable_numbers.push(sum_of_divisors)
			amicable_numbers.push(num)
		end
	end

	amicable_numbers = amicable_numbers.uniq

	sum_of_amicable_numbers = 0
	amicable_numbers.each do |number|
		sum_of_amicable_numbers += number
	end

	sum_of_amicable_numbers
end

puts amicable_numbers(10000)

timer_end = Time.now

puts "#{(timer_end - timer_start) * 1000} ms"