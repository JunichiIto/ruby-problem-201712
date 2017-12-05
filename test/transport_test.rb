require 'minitest/autorun'
require './lib/transport'

class TransportTest < MiniTest::Test
  def test_transport
    input = <<~EOS.chomp
      1 2 3
      4 5 6
      7 8 9
    EOS
    expect = <<~EOS.chomp
      1 4 7
      2 5 8
      3 6 9
    EOS
    assert_equal expect, transport(input)

    input = <<~EOS.chomp
      1 2 3
      4 5 6
      7 8 9
      10 11 12
    EOS
    expect = <<~EOS.chomp
      1 4 7 10
      2 5 8 11
      3 6 9 12
    EOS
    assert_equal expect, transport(input)

    # assert_equal "1 4\n2 5\n3 6", transport("1 2\r\n3 4\r5 6")
  end
end