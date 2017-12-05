def transport(source)
  source
      .each_line
      .map {|s| s.split(" ")}
      .transpose
      .map {|s| s.join(" ")}
      .join("\n")
end