require 'minitest/autorun'
require './lib/transport'

class TransportTest < MiniTest::Test
  def test_transport
    input = <<~EOS.chomp
      1 2 3
      4 5 6
      7 8 9
    EOS
    assert_equal <<~EOS.chomp, transport(input)
      1 4 7
      2 5 8
      3 6 9
    EOS

    input = <<~EOS.chomp
      1 2 3
      4 5 6
      7 8 9
      10 11 12
    EOS
    assert_equal <<~EOS.chomp, transport(input)
      1 4 7 10
      2 5 8 11
      3 6 9 12
    EOS
  end
end