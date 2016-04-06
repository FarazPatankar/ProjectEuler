# *****PROBLEM*****

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# *****PROBLEM*****

def largest_palindrome_product(start, finish)
	largest_palindrome_product = 0
	(start..finish).each do |num|
		(num..finish).each do |n|
			product = num*n
			if product.to_s == product.to_s.reverse && product > largest_palindrome_product
				largest_palindrome_product = product
			end
		end
	end

	largest_palindrome_product
end

puts largest_palindrome_product(100, 999)