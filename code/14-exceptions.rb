def safe!
	begin
		raise 'jestem zly!'
	rescue RuntimeError
		puts 'ktos tu kombinuje'
	rescue Exception => ex
		puts ex.class
		puts ex.message
	else
		puts "nie ma wyjatku"
	ensure
		puts "i tak cos zrobie!"
	end
end

safe!