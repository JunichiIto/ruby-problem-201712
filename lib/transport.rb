def transport(source)
  array = source.split("\n").map {|s| s.split(" ")}
  rows_count = array.first.count

  raise ArgumentError, "element size differs" if array.any? { |a| a.count != rows_count }

  transported_array = []
  0.upto(rows_count - 1) do |i|
    transported_array << array.map {|a| a[i]}
  end

  transported_array.map {|s| s.join(" ")}.join("\n")
end
