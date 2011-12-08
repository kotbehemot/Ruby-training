require 'builder'

class Cat

  attr_accessor :kind, :age, :name 

  def initialize(kind = 'nyan', age = 3, name = 'Nyan')
    @kind = kind
    @age = age
    @name = name
  end

  def to_xml(xml_options = {:indent => 2})
    xml = Builder::XmlMarkup.new(xml_options)
    xml.instruct! unless xml_options[:skip_instruct]
    xml.cat :kind => kind do
      xml.tag!(:age, age) #generycznie
      xml.name name
      xml.a("Watch me!", :href=>"http://nyan.cat/") if kind == 'nyan'
    end
  end
end

cat = Cat.new
puts cat.to_xml