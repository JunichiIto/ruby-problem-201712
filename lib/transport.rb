def transport(source)
  array = split_numbers(split_rows(source))
  rows_count = array.first.count

  transported_array = []
  rows_count.times do |i|
    transported_array << set_number(array, i)
  end

  join_rows(join_numbers(transported_array))
end

def split_rows(string)
  string.split("\n")
end

def split_numbers(array)
  array.map{|a| a.split(" ")}
end

def join_rows(array)
  array.join("\n")
end

def join_numbers(array)
  array.map{|a| a.join(" ")}
end

def set_number(array, i)
  array.map {|a| a[i]}
end

