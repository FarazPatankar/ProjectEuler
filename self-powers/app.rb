# *****PROBLEM*****

# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

# *****PROBLEM*****

def self_powers(max_range)
	sum = 0
	(1..max_range).each do |num|
		sum += num ** num
	end
	sum.to_s.split(//).last(10).join("").to_s
end

puts self_powers(1000)