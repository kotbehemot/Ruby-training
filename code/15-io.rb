File.expand_path('name')

File.expand_path("~oracle/bin")           #=> "/home/oracle/bin"
File.expand_path("../../bin", "/tmp/x")   #=> "/bin"

puts File.expand_path(__FILE__)

File.open("filename", "mode") do |aFile|
   # ... process the file
end

### Modes
# r		Read-only mode. The file pointer is placed at the beginning of the file. This is the default mode.
# r+	Read-write mode. The file pointer will be at the beginning of the file.
# w		Write-only mode. Overwrites the file if the file exists. If the file does not exist, creates a new file for writing.
# w+	Read-write mode. Overwrites the existing file if the file exists. If the file does not exist, creates a new file for reading and writing.
# a		Write-only mode. The file pointer is at the end of the file if the file exists. That is, the file is in the append mode. If the file does not exist, it creates a new file for writing.
# a+	Read and write mode. The file pointer is at the end of the file if the file exists. The file opens in the append mode. If the file does not exist, it creates a new file for reading and writing.

### Operations
#sysread(20)
#syswrite("ABCDEF")
#each_byte + block


IO.foreach("test"){|block| puts block}

File.rename( "test1.txt", "test2.txt" )
File.delete("text2.txt")

file = File.new( "test.txt", "w" )
file.chmod( 0755 )

File.open("file.rb") if File::exists?( "file.rb" )

# This returns either true or false
File.file?( "text.txt" ) 
File.directory?( "/usr/local/bin" ) # => true
File.directory?( "file.rb" ) # => false

File.readable?( "test.txt" )
File.writable?( "test.txt" )
File.executable?( "test.txt" )

File.zero?( "test.txt" )      # => true if empty

File.size( "text.txt" ) 		#=>wielkosc pliku
File.size?( "text.txt" ) 	#=> nil jesli plik nie istniej lub wielkosc == 0

File.ftype( "test.txt" )     # => file

File.ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File.mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File.atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008


#FileUtils