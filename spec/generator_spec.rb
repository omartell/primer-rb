require 'spec_helper'

module Primer
  RSpec.describe Generator do
    let(:generator) { described_class.new }

    it 'generates primes up to a given number' do
      expect(generator.first(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it 'generates the nth prime number' do
      expect(generator.nth(10)).to eq(29)
    end
  end
end
