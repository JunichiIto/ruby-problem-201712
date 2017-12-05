def transport(source)
  matrix = source.split("\n").map {|s| s.split(" ")}
  matrix.transpose.map {|s| s.join(" ")}.join("\n")
end
