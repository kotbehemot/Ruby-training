condition = true

def do_something
  puts 'quack'
end

def do_something_else
  puts 'roar'
end


if condition
  do_something
else
  do_something_else()
end

condition ? do_something() : do_something(another_method(5))

a = 5

case a
when 0..4
	do_something
when 5, 9
	do_something_else
else
	'quack passionately!'
end


