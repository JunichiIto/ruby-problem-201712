require 'minitest/autorun'
require './lib/transport'

class Transpose < MiniTest::Test
  def test_transpose
    input = <<~EOS
      1 2 3
      4 5 6
      7 8 9
    EOS

    output = <<~EOS
      1 4 7
      2 5 8
      3 6 9
    EOS

    # <~~ 記法だと末尾に改行文字(\n)が入るため #String#chomp で取り除く
    assert_equal output.chomp, transpose(input)

    input = <<~EOS
      1 2 3
      4 5 6
      7 8 9
      10 11 12
    EOS

    output = <<~EOS
      1 4 7 10
      2 5 8 11
      3 6 9 12
    EOS

    assert_equal output.chomp, transpose(input)
  end
end
