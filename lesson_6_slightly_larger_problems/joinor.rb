# Write a method called joinor that will produce the following result:

=begin

joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

=end

# Then, use this method in the TTT game when prompting the user to mark a square.

def joinor(array, separator = ", ", last = "or")
  output = ""
  array.each do |element|
    if array.length == 1
      return output << element.to_s
    end
    if element == array[-1]
      if array.length == 2
        output.chomp!(", ")
        output << " " + last + " " + element.to_s
      else
        output << last + " " + element.to_s
      end
    else
      output << element.to_s + separator
    end
  end
  output
end

# Their solution

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

p joinor([1])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"