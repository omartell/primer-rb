require 'spec_helper'

module Primer
  RSpec.describe Generator do
    let(:generator) { described_class.new(count: 10) }

    it 'generates primes up to a given number' do
      expect(generator.primes.size).to eq(10)
      expect(generator.primes.to_a).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
end
