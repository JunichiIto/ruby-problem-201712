# require 'stringio'

def transport(source)
  transported_array =
    source
      .lines
      .collect(&:split)
      .transpose
      .map(&joinNumber)

  output(transported_array)
end

private

  def joinNumber
    lambda { |num| num.join(' ') }
  end

  def output(rows)
    rows.join("\n")

    # This code failed test
    # io = StringIO.new
    # io.puts rows
    # io.string
  end
