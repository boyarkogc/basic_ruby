def echo(phrase)
	return phrase
end

def shout(phrase)
	return phrase.upcase
end

#times should be >= 2
def repeat(phrase, times = 2)
	if times < 2
		return phrase
	else
		repeated = phrase
		for i in 1..(times - 1)
			repeated = repeated + " " + phrase
		end
		return repeated
	end
end

def start_of_word(word, numLetters)
	if word.length <= numLetters
		return word
	else
		return word[0..(numLetters-1)]
	end
end

def first_word(phrase)
	return phrase.split[0..1][0]
end

def titleize(phrase)
	title = phrase.split
    title = title.map do |word|
      unless word == "of" || word == "the" || word == "a" || word == "over" || word == "and"
      	word.capitalize
      else
      	word
      end
    end
    title[0] = title.first.capitalize
    return title.join(" ")
end