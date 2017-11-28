require 'minitest/autorun'
require './lib/transpose'

class TransposeTest < MiniTest::Test
  def test_transpose_3x3_metrix
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, transpose(input)
  end

  def test_transpose_3x4_metrix
    input = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
    output = "1 4 7 10\n2 5 8 11\n3 6 9 12"
    assert_equal output, transpose(input)
  end
end