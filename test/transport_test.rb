require 'minitest/autorun'
require './lib/transport'

class TransportTest < MiniTest::Test
  def test_transport
    input = "1 2 3\n4 5 6\n7 8 9"
    output = "1 4 7\n2 5 8\n3 6 9"
    assert_equal output, transport(input)

    input = "1 2 3\n4 5 6\n7 8 9\n10 11 12"
    output = "1 4 7 10\n2 5 8 11\n3 6 9 12"
    assert_equal output, transport(input)
  end

  def test_transport_with_difference_element_size
    input = "1 2\n4 5 6\n7 8 9"

    assert_raises(ArgumentError) do
      transport(input)
    end

    input = "1 2 3 4 5\n1 2 3 4"

    assert_raises(ArgumentError) do
      transport(input)
    end
  end
end
