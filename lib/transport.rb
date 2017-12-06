def transport(source)
  two_dimensional_arrays = string_to_arrays(source)
  transported_arrays = two_dimensional_arrays.transpose
  arrays_to_string(transported_arrays)
end

private

def string_to_arrays(source)
  source.split("\n").map(&:split)
end

def arrays_to_string(arrays)
  arrays.map {|array| array.join(" ")}.join("\n")
end
