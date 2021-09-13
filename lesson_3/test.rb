def rolling_buffer3(input_array, max_buffer_size, new_element)
  input_array << new_element
  buffer = input_array
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end


a = [1,2]
rolling_buffer2(a, 2, 3)
p a
