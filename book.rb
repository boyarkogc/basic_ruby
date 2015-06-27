class Book
	attr_accessor :title
	def initialize

	end
	def title=(title)
		title_holder = title.split
		title_holder = title_holder.map do |word|
      		unless word == "of" || word == "the" || word == "a" || word == "over" || word == "and" || word == "an" || word == "in"
      			word.capitalize
      		else
      			word
      		end
    	end
    	title_holder[0] = title_holder.first.capitalize
		@title = title_holder.join(" ")
	end
end