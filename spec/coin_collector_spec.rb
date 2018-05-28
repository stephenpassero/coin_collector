require("rspec")
require("coin_collector")

describe("#coin_collector") do
  it("should return the correct number of quarters") do
    coin_collector = CoinCollector.new(63)
    expect(coin_collector.sort()).to eq(["2 Quarter(s)"])
  end
end
