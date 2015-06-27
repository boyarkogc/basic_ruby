class Timer
	attr_accessor :seconds, :time_string
	def initialize
		@seconds = 0
		@time_string = "00:00:00"
	end

	def seconds=(seconds)
		@seconds = seconds
		@time_string = seconds_to_time_string(seconds)
	end

	def seconds_to_time_string(seconds)
		temp = seconds
		sec = temp % 60
		temp = temp / 60
		min = temp % 60
		temp = temp / 60
		hr = temp
		return padded(hr) + ":" + padded(min) + ":" + padded(sec)
	end

	def padded(num)
		pad = ""
		if num < 10
			pad = '0'
		end
		pad << num.to_s
		return pad
	end
end

