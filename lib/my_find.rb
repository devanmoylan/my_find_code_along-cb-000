require 'pry'

def my_find(collection)
  i = 0
  storage = []
  while i < collection.length do
    return collection[i] if yield(collection[i])
    i +=1
  end

end

collection = (1..100).to_a

my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
