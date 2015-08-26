module Primer
  class Runner
    attr_reader :count
    private :count

    def initialize(count:)
      @count = count
    end

    def run
      primes = Primer::Generator.new(count: count).primes
    end
  end
end
