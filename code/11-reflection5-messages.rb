class VCR
  def initialize
    @messages = []
  end
  def method_missing(method, *args, &block)
    @messages << [method, args, block]
  end
  def play_back_to(obj)
    @messages.each do |method, args, block|
      puts obj.send(method, *args, &block)
    end
  end
end

vcr = VCR.new
vcr.sub!(/Java/) { "Ruby" }
vcr.upcase!
vcr[11,5] = "Universe" #[]=
vcr << "!"

string = "Hello Java World"
puts string

vcr.play_back_to(string)
puts string