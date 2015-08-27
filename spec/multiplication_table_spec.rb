require 'spec_helper'

module Primer
  RSpec.describe MultiplicationTable do
    let(:table) { described_class.build_for(primes: [2, 3, 5]) }

    it 'builds a multiplication table for a collection of prime numbers' do
      expect(table.rows).to eq([[4, 6, 10], [6, 9, 15], [10, 15, 25]])
    end
  end
end
