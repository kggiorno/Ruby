def dasherize_number(num)
	string = ""
	numLen = num.to_s.length
	numStr = num.to_s
	i = 0
	while i < numLen
		puts("i is : " + i.to_s)
		if (i == 0)
			if (numStr[i].to_i % 2) != 0
				string = (string + numStr[i] + "-")
			else
				string = (string + numStr[i])
			end
		elsif (i == numLen-1)
			if (numStr[i].to_i % 2) != 0
				if string[string.length-1] == "-"
					string = (string + numStr[i])
				else
					string = (string + "-" + numStr[i])
				end
			else
				string = (string + numStr[i])
			end
		elsif (numStr[i].to_i % 2) != 0
			if string[string.length-1] == "-"
				string = (string + numStr[i] + "-")
			else
				string = (string + "-" + numStr[i] + "-")
			end
		else
			string = (string + numStr[i])
		end
		puts("string is " + string)
		i += 1
	end
	return string
end

dasherize_number(203)
dasherize_number(303)
dasherize_number(333)
dasherize_number(3223)