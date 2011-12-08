obj = "thing"
puts obj.inspect
str = Marshal.dump(obj)
obj2 = Marshal.load(str)
puts obj2.inspect


class MyObj
  def initialize name, version, data
    @name    = name
    @version = version
    @data    = data
  end

  def marshal_dump
    [@name, @version]
  end

  def marshal_load array
    @name, @version = array
  end

end