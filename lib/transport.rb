def transport(source)
  array = source.split("\n").map {|s| s.split(" ")}
  array.transpose.map {|s| s.join(" ")}.join("\n")
end
