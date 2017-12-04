def text_to_matrix(text)
  text.split("\n").map {|s| s.split(" ")}
end

def matrix_to_text(matrix)
  matrix.map {|s| s.join(" ")}.join("\n")
end

def transpose_matrix(matrix)
  cols_count = matrix.count
  rows_count = matrix.first.count
  
  transposed_matrix = []
  rows_count.times do |row|
    transposed_matrix << Array.new(cols_count)
    cols_count.times do |col|
      transposed_matrix[row][col] = matrix[col][row]
    end
  end
  
  transposed_matrix
end

def transpose(source)
  matrix = text_to_matrix(source)
  transposed_matrix = transpose_matrix(matrix)
  matrix_to_text(transposed_matrix)
end