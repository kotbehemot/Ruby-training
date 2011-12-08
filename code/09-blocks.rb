def threeTimes
  yield
  yield
  yield
end
threeTimes { puts "Hello" }