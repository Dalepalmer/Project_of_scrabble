require('rspec')
require('scrabble')
require('pry')

describe('String#score') do
  it('gives a score of 1 for all one point letter') do
    expect(("B").score()).to(eq(3))
  end

  it('gives score for the word bad that is equal to 6') do
    expect(("BAD").score()).to(eq(6))
  end

  it('gives the score 87 for the value of every letter') do
    expect(("ABCDEFGHIJKLMNOPQRSTUVWXYZ").score()).to(eq(87))
  end
end
