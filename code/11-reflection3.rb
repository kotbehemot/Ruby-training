klass = Fixnum
direct_ancestors = [Fixnum]
begin
  print klass
  direct_ancestors << klass
  klass = klass.superclass
  if klass
  	print " < " 
  end
end while klass
puts
p Fixnum.ancestors
p Fixnum.ancestors - direct_ancestors