module Primer
  class TablePrinter
    attr_reader :rows, :primes, :cell_width
    private :rows, :primes, :cell_width

    def initialize(primes:, rows:)
      @primes = primes
      @rows = rows
      @cell_width = rows.last.last.to_s.size
    end

    def print_multiplication_table
      $stdout.puts(headers)
      $stdout.puts('-' * headers.size)
      print_table
    end

    private

    def headers
      cell('N') + '| ' + primes.map(&method(:cell)).join(' ')
    end

    def print_table
      rows.zip(primes).each do |row, prime|
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
