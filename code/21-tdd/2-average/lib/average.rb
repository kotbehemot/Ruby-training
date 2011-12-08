class Array

	def average
		sum = 0.0
		each do |elem|
			sum += elem
		end
		return sum / length
	end

end
