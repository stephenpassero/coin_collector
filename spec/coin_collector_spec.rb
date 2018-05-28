require("rspec")
require("coin_collector")

describe("#coin_collector") do
  it("should return the correct number of quarters") do
    coin_collector = CoinCollector.new()
    expect(coin_collector.sort(25)).to eq(["1 Quarter(s)"])
    expect(coin_collector.sort(64)).to eq(["2 Quarter(s)"])
  end
end
