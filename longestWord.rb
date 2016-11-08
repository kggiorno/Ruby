def longest_word(sentence)
	puts("Passed in sentence is: " + sentence.to_s)
	sentenceArray = sentence.split
	puts("Sentence array is: " + sentenceArray.to_s)
	longestLength = 0
	longestLengthWord = ""
	for i in sentenceArray
		if i.length > longestLength
			longestLength = i.length
			longestLengthWord = i
		end
	end
	puts longestLengthWord.to_s
	return longestLengthWord
end

longest_word("short longest")
longest_word("one")
longest_word("abc def abcde")