require 'minitest/autorun'
require './lib/transport'

class TransportTest < MiniTest::Test
  def test_facade
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, Transport.call(input)

    input = ""
    output = ""
    assert_equal output, Transport.call(input)

    input = nil
    output = ""
    assert_equal output, Transport.call(input)
  end

  def test_initialize
    source = "1 2 3\n4 5 6\n7 8 9"
    output = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
    assert_equal output, Transport.new(source).rows
  end

  def test_call
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, Transport.new(input).call

    input = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
    output = "1 4 7 10\n2 5 8 11\n3 6 9 12"
    assert_equal output, Transport.new(input).call
  end
end
