# 文字列で表現された行列を転置して、文字列形式で返す
# ex) 入力: "1 2 3\n4 5 6\n7 8 9\n10 11 12"
#     出力: "1 4 7 10\n2 5 8 11\n3 6 9 12"
def transport(source)
  source
      .split("\n")
      .map {|s| s.split(" ")}
      .transpose
      .map {|a| a.join(" ")}
      .join("\n")
end