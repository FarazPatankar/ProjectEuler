# *****PROBLEM*****

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# *****PROBLEM*****

def special_pythagorean_triplet(sum_of_triplet)

	(1..sum_of_triplet).each do |c|
		(1..c).each do |b|
			(1..b).each do |a|
				if (a + b + c) == sum_of_triplet && (a*a) + (b*b) == (c*c)
					return a * b * c
				end
			end
		end
	end

end

puts special_pythagorean_triplet(1000)