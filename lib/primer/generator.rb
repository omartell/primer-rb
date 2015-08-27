module Primer
  class Generator
    def primes
      increments = [4, 2, 4, 2, 4, 6, 2, 6]
      previous_primes = [2, 3, 5]
      next_number = 7

      Enumerator.new do |yielder|
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
      end
    end

    def nth(n)
      first(n).last
    end

    def first(n)
      primes.take(n)
    end

    private

    def not_a_multiple?(next_number, previous_primes)
      previous_primes.none? { |prime| next_number.modulo(prime).zero? }
    end
  end
end
