doYouLike = Proc.new do |aGoodThing, anotherThing|
  puts 'I *really* like '+aGoodThing+' and '+anotherThing + '!'
end

doYouLike.call 'chocolate', 'sweets'
doYouLike.call 'ruby', 'ryby'