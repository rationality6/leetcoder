// It is a sweltering summer day, and a boy wants to buy some ice cream bars.

// At the store, there are n ice cream bars. You are given an array costs of length n, where costs[i] is the price of the ith ice cream bar in coins. The boy initially has coins coins to spend, and he wants to buy as many ice cream bars as possible. 

// Return the maximum number of ice cream bars the boy can buy with coins coins.

// Note: The boy can buy the ice cream bars in any order.



// Input: costs = [1,3,2,4,1], coins = 7
// Output: 4
// Explanation: The boy can buy ice cream bars at indices 0,1,2,4 for a total price of 1 + 3 + 2 + 1 = 7.


// Input: costs = [10,6,8,7,7,8], coins = 5
// Output: 0
// Explanation: The boy cannot afford any of the ice cream bars.


// Input: costs = [1,6,3,1,2,5], coins = 20
// Output: 6
// Explanation: The boy can buy all the ice cream bars for a total price of 1 + 6 + 3 + 1 + 2 + 5 = 18.



const maxIceCream = (costs, coins) => {
  const sorted_costs = costs.sort((a, b) => a - b)

  let total_prices = 0
  let ice_creams = 0

  sorted_costs.every((item) => {
    total_prices += item

    if (total_prices > coins) {
      return false
    } else {
      ice_creams += 1
      return true
    }
  })
  return ice_creams
};

costs0 = [1, 3, 2, 4, 1]
costs1 = [10, 6, 8, 7, 7, 8]
costs2 = [1, 6, 3, 1, 2, 5]

console.log(maxIceCream(costs0, 7))
