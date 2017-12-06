def transpose(matrix_text)
  source_array = matrix_text.lines.map(&:split)
  source_array.transpose.map{ |array| array.join(" ")}.join("\n")
end

