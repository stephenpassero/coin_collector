require("rspec")
require("coin_collector")

describe("#coin_collector") do
  it("should return the correct number of quarters") do
    coin_collector = CoinCollector.new(75)
    expect(coin_collector.sort()).to eq(["3 Quarter(s)"])
  end

  it("should return the correct number of dimes") do
    coin_collector = CoinCollector.new(20)
    expect(coin_collector.sort()).to eq(["2 Dime(s)"])
  end

  it("should return the correct number of nickels") do
    coin_collector = CoinCollector.new(5)
    expect(coin_collector.sort()).to eq(["1 Nickel(s)"])
  end

  it("should return the correct number of pennies") do
    coin_collector = CoinCollector.new(4)
    expect(coin_collector.sort()).to eq(["4 Penny(s)"])
  end

  it("should return the correct number of all coins") do
    coin_collector = CoinCollector.new(98)
    expect(coin_collector.sort()).to eq(["3 Quarter(s)", "2 Dime(s)", "3 Penny(s)"])
  end
end
