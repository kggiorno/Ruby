# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
	index = 0
	strLen = string.length
	puts strLen
	while index < strLen
		puts("String is : " + string)
		if string[index] == "a"
			strSlice = string[index..index+3]
			puts("String slice is : " + strSlice)
			if strSlice.include?("z")
				puts("True")
				return TRUE
			end
		end
		index = index + 1
	end
	return FALSE
end

nearby_az("baz")
nearby_az("abz")
nearby_az("abcz")
nearby_az("a")
nearby_az("z")
nearby_az("za")