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

end
