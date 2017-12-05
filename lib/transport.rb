# 文字列で表現された行列を転置して、文字列形式で返す
#   入力例: "1 2 3\n4 5 6\n7 8 9\n10 11 12"
#   出力例: "1 4 7 10\n2 5 8 11\n3 6 9 12"
def transport(source)
  source
      .each_line
      .map(&:split)
      .transpose
      .map {|ary| ary.join(" ")}
      .join("\n")
end