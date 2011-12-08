# stan obiektu może być zmieniony wewnątrz funkcji (zmienne przekazywane są poprzez wartość, ale zawierają referencje do obiektów)
# nazwa funkcji modyfikującej dane wejściowe powinna kończyć się wykrzyknikiem (zwyczajowo)
class B
	attr_accessor :a
	def initialize(init_value)
		@a = init_value
	end
end

def change!(arg)
	arg.a = 5
end

b = B.new(3333)
puts b.a
puts change!(b)
puts b.a

#ale ale! operując bezpośrednio na referencjach, możemy łatwo je stracić wewnątrz funkcji (arg staje się nowym dowiązaniem do nowego obiektu)
def change(arg)
  	arg = B.new(5)
  	arg.a
end
b2 = B.new(3333)
puts b2.a
puts change(b2)
puts b2.a
