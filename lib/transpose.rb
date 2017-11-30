def transpose(source)
  array = source.split("\n").map {|s| s.split(' ')}
  transposed_array = array.transpose
  transposed_array.map {|s| s.join(' ')}.join("\n")
end
