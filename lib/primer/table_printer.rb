module Primer
  class TablePrinter
    attr_reader :table, :cell_width
    private :table, :cell_width

    def initialize(table)
      @table = table
      @cell_width = table.largest_prime.to_s.size
    end

    def print_table
      $stdout.puts(headers)
      $stdout.puts('-' * headers.size)
      print_rows
    end

    private

    def headers
      cell('N') + '| ' + table.primes.map(&method(:cell)).join(' ')
    end

    def print_rows
      table.rows.zip(table.primes).each do |row, prime|
        $stdout.puts(cell(prime) + '| ' + row.map(&method(:cell)).join(' '))
      end
    end

    def cell(string)
      pad_right(string.to_s, cell_width)
    end

    def pad_right(string, length)
      spacing = ' '
      spacing *= (length - string.size)
      string + spacing
    end
  end
end
