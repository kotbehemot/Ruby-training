class Range
  def to_json(*a)
    {
      'json_class'   => self.class.name,
      'data'         => [ first, last, exclude_end? ]
    }.to_json(*a)
  end

  def self.json_create(o)
    new(*o['data'])
  end
end

require 'json'

json_range = (1..10).to_json
puts json_range

puts (JSON.parse(json_range) == (1..10))