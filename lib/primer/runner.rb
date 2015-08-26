module Primer
  class Runner
    attr_reader :count
    private :count

    def initialize(count:)
      @count = count
    end

    def run
      primes  = Primer::Generator.new(count: count).primes
      rows    = Primer::MultiplicationTable.new(primes).rows
      printer = Primer::TablePrinter.new(primes: primes, rows: rows)
      printer.print_multiplication_table
    end
  end
end
