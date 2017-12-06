def transport(source)
  array = source.split("\n").map {|s| s.split(" ")}
  array.transpose.map{|ary| ary.join(" ")}.join("\n")
end