require 'shellwords'
require 'csv'

def transport(source)
  CSV.parse(source, col_sep: ' ').transpose.map(&:shelljoin).join(?\n)
end
