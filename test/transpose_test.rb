require 'minitest/autorun'
require './lib/transpose'

class TransposeTest < MiniTest::Test
  def test_transpose
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, transpose(input)

    input = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
    output = "1 4 7 10\n2 5 8 11\n3 6 9 12"
    assert_equal output, transpose(input)
  end

  def test_transpose_with_difference_element_size
    input = "1 2\n4 5 6\n7 8 9"

    assert_raises(ArgumentError) do
      transpose(input)
    end

    input = "1 2 3 4 5\n1 2 3 4"

    assert_raises(ArgumentError) do
      transpose(input)
    end
  end

  def test_transpose_with_nil
    input = nil
    output = ""

    assert_equal output, transpose(input)
  end

  def test_transpose_with_blank_string
    input = ""
    output = ""

    assert_equal output, transpose(input)
  end
end
