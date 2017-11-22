# extracting_to_methods_02.rb

# Let's now take a look at an example with hashes. In this example we want to
# select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  # hash.select{|k,v| v == "Fruit"}
  output_hash = {}
  counter = 0

  loop do
    break if counter == hash.size

    if hash.values[counter] == "Fruit"
      output_hash[hash.keys[counter]] = hash.values[counter]
    end

    counter += 1   
  end
  output_hash
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}