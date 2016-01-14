def factorial(n)
	product = 1
	until n == 0
		product = product * n
		n -= 1
	end
	return product
end

def sum_of_digits(n)
	digit_string = n.to_s
	sum = 0
	x = 0
	digit_int = 0
	digit_string.length.times do
		digit_int = digit_string[x].to_i
		sum = sum + digit_int
		x += 1
	end
	return sum
end

def factorial_digit_sum(n)
	factorial(n)
	sum_of_digits(n)
	sum_of_digits(factorial(n))
end