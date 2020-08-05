require 'pry'

def hello_t(array)
  if block_given?
  i = 0
  while i < array.length
    yield array[i]
    i = i + 1
  end
  array
  else
    puts "Hey! No block was given!"
  end
end
# call your method here!


# hello_t(["Tim", "Tom", "Jim"]) do |name|
# binding.pry
#  if name.start_with?("T")
#    puts "Hi, #{name}"
#  end
# end

def make_salad
  yield "lettuce"
  yield "tomatoes"
  yield "croutons"
end

make_salad { |ingredient| puts ingredient }

newarr = [1, 2, 3]

test1 = []

newarr.each do |num|
  test1 << num
end

test1 << 4

print test1


#puts [test1]

# newarr.each { |num| puts num+1 }

#["Tim", "Tom", "Jim"].each do |name|
#  binding.pry
#  if name.start_with?("T")
#    puts "Hi, #{name}"
#  end
#end
