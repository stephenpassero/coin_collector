require("pry")

class CoinCollector
  def sort(cents)
    @cents = cents
    arr_of_coins = []
    counter = 0
    while(@cents >= 25) do
      counter += 1
      @cents -= 25
    end
    arr_of_coins.push(counter.to_s + " Quarter(s)")
  end
end
