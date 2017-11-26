def transpose(source)
  transposed_hash = transposed_hash_of(source)
  string_of(transposed_hash)
end

private

def transposed_hash_of(source)
  source.split("\n").map(&:split).transpose
end

def string_of(transposed_hash)
  transposed_hash.map{|a| a.join("\s")}.join("\n")
end
