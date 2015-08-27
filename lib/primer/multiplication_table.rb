module Primer
  class MultiplicationTable
    attr_reader :primes, :rows

    def self.build_for(primes:)
      rows = primes.map do |n|
        primes.map { |m| n * m }
      end
      new(primes: primes, rows: rows)
    end

    def initialize(primes: , rows:)
      @primes = primes
      @rows   = rows
    end

    def largest_prime
      rows.last.last
    end
  end
end
