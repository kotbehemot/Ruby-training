class Animal
	@@animals_in_forest = 0

	def initialize(breed, weight)
		@@animals_in_forest += 1
		@breed = breed
		@weight = weight
	end

	def to_s
		"#{@breed} (#{@weight})"
	end

	#attr_accessor :weight, :breed
	#wywołujemy w pętli funkcję, któ®a dynamicznie definiuje nowe funkcje (gettery i settery)
	[:weight, :breed].each do |attr|
		attr_accessor attr
	end

	#attr_reader + #attr_writer
	# def weight
	# 	@weight
	# end

	# def weight=(val)
	# 	@weight = val
	# end

	# funkcja klasowa - czym jest w tym momencie self?
	def self.number_of_animals
		@@animals_in_forest
	end

	protected #private
	def sound
		'roar'
	end
end


class Pet < Animal
	attr_accessor :name

	def to_s
		@name
	end

end

a = Animal.new('ferret', 3)
b = Animal.new('bear', 40)

puts a
puts a.weight
a.weight = 12
puts a.weight
puts "animals in the forest: #{Animal.number_of_animals}"

puts a.sound