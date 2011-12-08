# przykład definicji funkcji w rubym
# funkcja może wywołać samą siebie = prosta rekursja
# wszystkie funkcje sę matodami! W tym przypadku definiujemy metodę klasy Object
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

puts factorial(ARGV[0].to_i)
