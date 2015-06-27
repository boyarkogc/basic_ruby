def translate(phrase)
	vowels = "aeiou"
	arr = phrase.split
	arr = arr.map do |word|
		if vowels.include?(word[0])
			word + "ay"
		else
			beginning = ""
			for i in 0..word.length do
				if vowels.include?(word[i])
					#special case where "qu" is considered a single syllable
					#not the most effective way to do it, but it makes the tests pass I guess
					if word[i] == "u" && i != 0 && word[i-1] == "q"
						beginning = beginning + word[i]
					else
						break
					end
				else
					beginning = beginning + word[i]
				end
			end
			word[i..word.length-1] + beginning + "ay"
		end
	end
	arr.join(" ")
end