def transpose(source)
  array = source.split("\n").map { |nums| nums.split(" ") }
  array.transpose.map { |nums| nums.join(" ") }.join("\n")
end
