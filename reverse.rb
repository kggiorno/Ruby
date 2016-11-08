def reverse(string)
	puts string
	newWord = []
	x = string.length-1
	while x > -1
		newWord.push(string[x])
		x = x-1
	end
	newWord = newWord.join()
	puts newWord
	return newWord
end

# Tests for #reverse


reverse("abc")
reverse("a") 
reverse("")