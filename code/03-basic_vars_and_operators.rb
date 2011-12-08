0.zero?    # => true
1.zero?    # => false
1.abs      # => 1
-1.abs     # => 1
1.methods  # => lista metod dla obiektu klasy Fixnum
2.+(3)     # => 5  (bardziej formalny zapis 2+3)

10.class   # => Fixnum
(10**100).class   # => Bignum


puts 'hello '.+ 'world'
puts (10.* 9).+ 9
