module Primer
  class Runner
    attr_reader :count
    private :count

    def initialize(count:)
      @count = count
    end

    def run
      generator = Generator.new
      primes    = generator.first(count)
      table     = MultiplicationTable.build_for(primes: primes)
      printer   = TablePrinter.new(table)
      printer.print_table
    end
  end
end
