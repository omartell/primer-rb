module Primer
  class MultiplicationTable
    attr_reader :numbers
    private :numbers

    def initialize(numbers)
      @numbers = numbers
    end

    def rows
      numbers.map do |n|
        numbers.map { |m| n * m }
      end
    end
  end
end
