def transport(source)
  matrix = source.split("\n").map {|s| s.split(" ")}
  matrix.transpose.map{|ary| ary.join(" ")}.join("\n")
end