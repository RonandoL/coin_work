require('rspec')
require('coin_combinations')

describe('Fixnum#change') do

  it('receives user input and divides quarters') do
    expect(150.change).to(eq([6, 0, 0, 0]))
  end

  it('takes remainder after quarters, then divides by dimes') do
    expect(160.change).to(eq([6, 1, 0, 0]))
  end

  it('takes remainder after dimes, then divides by nickels') do
    expect(165.change).to(eq([6, 1, 1, 0]))
  end

  it('takes remainder after nickles, then divides by ones') do
     expect(167.change).to(eq([6, 1, 1, 2]))
  end

  # bonus!

  it('puts a limitation on the amount of quarters available') do
    expect(175.change).to(eq([3, 10, 0, 0]))
  end

end
