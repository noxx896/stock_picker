#Stock Picker

def stock_picker(prices)
  transaction = []
  profit = 0

  for i in 0..prices.length-2
    for j in i+1..prices.length-1
      if prices[j] - prices[i] > profit
        profit = prices[j] - prices[i]
        transaction = [i, j]
      end
    end
  end
  
  transaction
end

print stock_picker([17,13,15,18,10,22,9,7])

print stock_picker([17,3,6,9,15,8,6,1,10])
