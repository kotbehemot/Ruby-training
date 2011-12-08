class Array
  def inject(n)
     each do |value|
       n = yield(n, value) 
     end
     n
  end
  def sum
    inject(0) { |n, value| n + value }
  end
  def product
    inject(1) { |n, value| n * value }
  end
end
[ 1, 2, 3, 4, 5 ].sum	»	15
[ 1, 2, 3, 4, 5 ].product	»	120