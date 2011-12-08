a = 102.7
b = 95.1
ObjectSpace.each_object(Numeric) {|x| p x }

#Fixnum, nil, false, true nie są uwzględniane w object space!
a = 102
b = 95
ObjectSpace.each_object(Numeric) {|x| p x }


r = 1..10
list = r.methods
list.length					#»	60
list[0..3]					#»	["size", "end", "length", "exclude_end?"]
r.respond_to?("frozen?")	#»	true
r.respond_to?("hasKey")		#»	false
"me".respond_to?("==")		#»	true

num = 1
num.id						#»	3 //object_id
num.class					#»	Fixnum
num.kind_of? Fixnum			#»	true
num.kind_of? Numeric		#»	true
num.instance_of? Fixnum		#»	true
num.instance_of? Numeric	#»	false