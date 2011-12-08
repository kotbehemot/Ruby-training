class MyClass
 

  def new_method
    # Yada yada yada
  end

  def MyClass.method_added(name)
    puts "Adding Method #{name}"
  end
end