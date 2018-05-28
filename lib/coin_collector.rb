require("pry")

class CoinCollector
  def initialize(cents)
    @cents = cents
  end

  def sort_for_group(coin_value)
    counter = 0
    while(@cents >= coin_value) do
      counter += 1
      @cents -= coin_value
    end
    counter
  end

  def sort()
    arr_of_coins = []
    if @cents >= 25
      arr_of_coins.push(sort_for_group(25).to_s + " Quarter(s)")
    end
    if @cents >= 10
      arr_of_coins.push(sort_for_group(10).to_s + " Dime(s)")
    end
    arr_of_coins
  end
end
