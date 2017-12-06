require 'minitest/autorun'
require './lib/transporse'

class TransporseTest < MiniTest::Test
  def test_transporse
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, transporse(input)

    input = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
    output = "1 4 7 10\n2 5 8 11\n3 6 9 12"
    assert_equal output, transporse(input)
  end
end
