def transporse(source)
  two_dimensional_arrays = string_to_arrays(source)
  transporsed_arrays = two_dimensional_arrays.transpose
  arrays_to_string(transporsed_arrays)
end

private

def string_to_arrays(source)
  source.lines.map(&:split)
end

def arrays_to_string(arrays)
  arrays.map {|array| array.join(" ")}.join("\n")
end
