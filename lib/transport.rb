def transport(source)
  matrix_to_string(string_to_matrix(source).transpose)
end

def string_to_matrix(matrix_string)
  matrix_string.lines.map {|row_string| row_string.split(" ")}
end

def matrix_to_string(matrix_array)
  matrix_array.map {|row_array| row_array.join(" ")}.join("\n")
end
