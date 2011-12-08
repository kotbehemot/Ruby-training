puts "Zagrajmy w pomidora"

while 'PA!' != (line = gets.chomp)
  unless line == line.upcase
    puts "Glosniej, prosze! #{line}"
  else
    puts "pomidor"
  end
end
