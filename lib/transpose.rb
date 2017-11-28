def transpose(source)
  matrix = source.split("\n").map(&:split)

  transposed_matrix = 
    matrix.first.map.with_index {|_n, i| 
      matrix.map {|row| row[i]}
    }

  transposed_matrix.map{|row| row.join(" ")}.join("\n")
end