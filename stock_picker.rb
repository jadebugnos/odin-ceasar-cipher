def stock_picker(prices)
  buy_day = nil
  sell_day = nil
  max_profit = 0

  prices.each_with_index do |buy_price, buy_index|
    prices[buy_index + 1..].each_with_index do |sell_price, sell_index|
      # calculate profit
      profit = sell_price - buy_price
      # update max profit and days if a better profit is found
      next unless profit > max_profit

      max_profit = profit
      buy_day = buy_index
      sell_day = buy_index + 1 + sell_index
    end
  end
  [buy_day, sell_day]
end

arr = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(arr)
