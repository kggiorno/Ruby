def factorial(n)
	puts("n = " + n.to_s)
	if n == 0
		return 1
	else
		factorialArray = []
		while n > 0
			factorialArray.push(n)
			n = n - 1
		end	
		puts("The factorialArray is " + factorialArray.to_s)
		factorial = 1 
		for i in factorialArray
			factorial = factorial * i
		end
		puts("The factorial is " + factorial.to_s)
		return factorial
	end			
end

factorial(0)
factorial(1)
factorial(2)
factorial(3)
factorial(4)