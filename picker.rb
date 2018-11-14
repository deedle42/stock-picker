def stock_picker(arr)
  buy = 0
  sell = 0
  profit = 0
  for i in 0..arr.length - 1
    j = i + 1
    for j in j..arr.length - 1
      current_profit = arr[j] - arr[i]

      if current_profit > profit
        profit = arr[j] - arr[i]
        buy = i + 1
        sell = j + 1
      end
    end
  end
  p "Buy on day #{buy} and sell on day #{sell} for a max profit of #{profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
