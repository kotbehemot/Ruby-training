#[1,2,3,4].each{|i| print i}

def test(arg)
	(3*arg).downto(0) {|i| yield i, i*2, i*3}
end

test(3) do |one, two, three|
  print [one, two, three].join(', ')
end

puts


#TYPOWE ZASTOSOWANIA BLOKÓW:
#iteracja
[1,2,3].each do |item| puts item end

#zarządzanie zasobami
# file_contents = IO.open(file_name) do |f| 
#   f.read
# end

# Transaction.do
#   #sql!
# end

#callbacks
# widget.on_button_press { puts "Got Button Press" }