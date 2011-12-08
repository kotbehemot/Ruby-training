class Deaf
	def method_missing(method, *args, &block)
		if method.to_s == 'halo!' then
			puts "czego tak krzyczy?"
		else
			puts "he?"
		end
	end
end