Dir.chdir("/usr/bin")
puts Dir.pwd

puts Dir.entries("/usr/bin").join(' ')

Dir.foreach("/usr/bin") do |entry|
   puts entry
end

Dir.mkdir("my_little_secret", 755)
You can also set permissions on a new directory (not one that already exists) with mkdir:

Dir.delete("testdir")