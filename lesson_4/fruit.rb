def select_fruit2(produce)
  fruits = {}
  produce.each_pair do |k, v|
    if v == 'Fruit'
      fruits[k] = v
    end
  end
  fruits
end

def select_fruit(produce)
  produce.select {|k, v| v == 'Fruit'}
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}