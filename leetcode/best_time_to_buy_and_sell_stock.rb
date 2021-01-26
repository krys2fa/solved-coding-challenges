# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)

    min_val = prices[0]
    max_profit = 0

    prices.each do |ele|
      min_val = ele if min_val > ele
      profit = ele - min_val
      max_profit = profit if profit > max_profit
    end

    max_profit

end 
