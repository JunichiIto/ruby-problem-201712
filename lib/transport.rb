def transport(source)
  rows = build_rows_from(source)
  transpose_rows(rows)
end

def build_rows_from(source)
  source.to_s.split("\n").map { |row| row.split(" ") }
end

def transpose_rows(rows)
  rows.transpose.map { |row| row.join(" ") }.join("\n")
end
