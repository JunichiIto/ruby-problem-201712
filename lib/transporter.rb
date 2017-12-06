class Transporter
  attr_reader :source

  def self.call(source)
    new(source).call
  end

  def initialize(source)
    @source = source
  end

  def call
    stringify(parse_source.transpose)
  end

  private

  def parse_source
    source.split("\n").map { |string| string.split(" ") }
  end

  def stringify(matrix)
    matrix.map { |array| array.join(" ") }.join("\n")
  end
end
