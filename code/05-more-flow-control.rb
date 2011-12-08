catch (:done) do
  i = 0
  while true
  	i += 1
    throw :done unless i<15
	p i
  end
end

i=0
puts "How fast is Ruby?"
loop do
	i+=1
	break if i>=10**8
	next if i<(10**8)-5
	puts i
end
puts "Not so fast..."