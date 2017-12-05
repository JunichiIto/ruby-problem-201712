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
  end

  def test_compare_heredoc_to_string
    literal = "1 2 3\n4 5 6\n7 8 9"
    heredoc = <<~EOS.chomp
      1 2 3
      4 5 6
      7 8 9
    EOS
    assert_equal heredoc, literal
  end
end