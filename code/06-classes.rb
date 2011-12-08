#contrib to:
#http://weblog.jamisbuck.org/2007/2/23/method-visibility-in-ruby
class Foo
  def a
  end

  # call 'a' with explicit 'self' as receiver
  def b
   self.a
  end

  # call 'a' with implicit 'self' as receiver
  def c; a; end
end

def safe_send(receiver, method, message)
  # can't use 'send' because it bypasses visibility rules
  eval "receiver.#{method}"
rescue => e
  puts "#{message}: #{e}"
else
  puts "#{message}: succeeded"
end

visibility = ARGV.shift || "public"
Foo.send(visibility, :a)

foo = Foo.new
safe_send(foo, :a, "explicit receiver       ")
safe_send(foo, :b, "explicit 'self' receiver")
safe_send(foo, :c, "implicit 'self' receiver")