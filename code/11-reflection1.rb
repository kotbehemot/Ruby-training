module A
  def method1( tuti, *fruity, &block ) 
    
  end
  def method2(bim, bam, boom = 'kaboom?')  
    
  end

end

puts A.instance_method(:method1).class 				#=> UnboundMethod
puts A.instance_method(:method1).parameters.inspect # => [[:req, :tuti], [:rest, :fruity], [:block, :block]]