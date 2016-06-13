def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element].to_a
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

puts rolling_buffer2(2, 7, 5)
