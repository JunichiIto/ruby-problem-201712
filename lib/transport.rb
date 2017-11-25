class Transport
  class << self
    def call(source)
      new(source).call
    end
  end

  ROWS_DELIMITER = "\n".freeze
  COLS_DELIMITER = " ".freeze

  attr_reader :rows

  def initialize(source)
    @rows = build_rows_from(source)
  end

  def call
    stringify_rows_from(rows.transpose)
  end

  private

  def build_rows_from(source)
    source.to_s.split(ROWS_DELIMITER).map { |row| row.split(COLS_DELIMITER) }
  end

  def stringify_rows_from(rows)
    rows.map { |row| row.join(COLS_DELIMITER) }.join(ROWS_DELIMITER)
  end
end
