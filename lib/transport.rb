def transport(source)
  org_array = source.each_line.map {|s| s.split(" ")}

  transported_array = org_array.transpose

  transported_array.map {|s| s.join(" ")}.join("\n")
end