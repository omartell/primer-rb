module Primer
  class Generator
    attr_reader :count
    private :count

    def initialize(count:)
      @count = count
    end

    def primes
      increments = [4, 2, 4, 2, 4, 6, 2, 6]
      previous_primes = [2, 3, 5]
      next_number = 7

      Enumerator.new(count) do |yielder|
        previous_primes.each { |prime| yielder << prime }
        loop do
          if not_a_multiple?(next_number, previous_primes)
            yielder << next_number
            previous_primes << next_number
          end
          increment = increments.shift
          next_number += increment
          increments << increment
        end
      end.lazy.take(count)
    end

    private

    def not_a_multiple?(next_number, previous_primes)
      previous_primes.none? { |prime| next_number.modulo(prime).zero? }
    end
  end
end
