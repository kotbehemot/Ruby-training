class Fixnum
  def twotimes
    times do
    	yield
    	yield
    end
  end
 end

3.twotimes do 
 	print "LA"
end
puts

#a jeśli chcemy nadpisać działanie już isteniejącej funkcji?
# (nie róbcie tego w domu!)
class Fixnum
  def times
    1.upto(self) do
      yield
      yield
    end
  end
end

3.times do
  print "DA"
end
puts