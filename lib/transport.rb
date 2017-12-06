def transport(source)
  array = source.split("\n").map(&:split)
  array.transpose.map {|s| s.join(" ")}.join("\n")
end
