def transport(source)
  array = source.split("\n").map {|s| s.split(" ")}

  transported_array = array.transpose

  transported_array.map {|s| s.join(" ")}.join("\n")
end
