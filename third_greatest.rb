# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	i = 0
	greatest = 0
	second = 0
	third = 0
	while i < nums.length
		if nums[i] > greatest
			if second > third
				third = second
				second = greatest
			else
				second = greatest
			end
			greatest = nums[i]
		elsif (greatest > nums[i]) && (nums[i] > second)
			if second > third
				third = second
			end
			second = nums[i]
		elsif (third < nums[i]) && (nums[i] < second) && (second < greatest)
			third = nums[i]
		end
		puts("nums is : " + nums.to_s)
		puts("i is : " + i.to_s)
		puts("greatest is : " + greatest.to_s)
		puts("second is : " + second.to_s)
		puts("third is : " + third.to_s)
		i = i + 1
	end
	return third
end

third_greatest([5,3,7])
third_greatest([5,3,7,4])
third_greatest([2,3,7,4])