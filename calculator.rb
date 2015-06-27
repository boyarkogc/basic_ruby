def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(a)
	return a.inject(0) { |sum, element| sum + element }
end

def multiply(*a)
	return a.inject(1) { |total, element| total * element }
end

def power(base, exp)
	return base ** exp
end

def factorial(a)
	result = 1
	a.times do
		result = result * a
		a = a - 1
	end
	return result
end