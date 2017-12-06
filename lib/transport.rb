def transport(source)
  matrix = source.lines.map(&:split)
  matrix.transpose.map{|row| row.join(" ")}.join("\n")
end
