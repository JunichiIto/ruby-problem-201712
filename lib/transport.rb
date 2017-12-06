def transpose(source)
  source_array = source.split("\n").map(&:split)
  transposed_array = source_array.transpose
  transposed_array.map { |nums| nums.join(" ") }.join("\n")
end
