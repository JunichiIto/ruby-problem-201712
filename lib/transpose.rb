def transpose(source)
  array = source.to_s.split("\n").map {|s| s.split(" ")}

  array.transpose.map {|s| s.join(" ")}.join("\n")
rescue IndexError => e
  raise ArgumentError, e
end
