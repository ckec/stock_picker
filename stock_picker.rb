def stock_picker(prices)
  max_profit = 0
  result = 0
  
  prices.each_with_index do |buy_price, buy_day|
      prices.each_with_index do |sell_price, sell_day|

          profit = sell_price - buy_price

      if profit > max_profit && buy_day < sell_day
          max_profit = profit
          result = [buy_day, sell_day]
      end
  end
  end

  p result

  end
  
stock_picker([17,3,6,9,15,8,6,1,10])
