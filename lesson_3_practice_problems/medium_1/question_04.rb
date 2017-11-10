# question_04.rb

=begin

Alyssa was asked to write an implementation of a rolling buffer. 
Elements are added to the rolling buffer and if the buffer becomes full,
then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, 
"Take your pick. Do you like << or + for modifying the buffer?". 
Is there a difference between the two, 
other than what operator she chose to use to add an element to the buffer?

=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# rolling_buffer1 mutates the original array

buffer = [1,2,3,4,5]

buffer1 = rolling_buffer1(buffer, 5, 6)
p buffer1
p buffer

# rolling_buffer2 doesn't mutate the caller

buffer = [1,2,3,4,5]

buffer2 = rolling_buffer2(buffer, 5, 6)
p buffer2
p buffer