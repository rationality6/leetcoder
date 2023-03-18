# repeat
defmodule Solution do
  def perform(costs, coins) do
    Enum.sort(costs)
    |> find_ice_cream(coins, 0)
  end

  def find_ice_cream([], _coins_left, icecream_count) do
    icecream_count
  end

  def find_ice_cream([head | _body] = costs, coins_left, icecream_count) do
    coins_left = coins_left - head
    find_ice_cream_count(costs, coins_left, icecream_count)
  end

  def find_ice_cream_count([_head | body], coins_left, icecream_count) when coins_left >= 0 do
    find_ice_cream(body, coins_left, icecream_count + 1)
  end

  def find_ice_cream_count([_head | _body], coins_left, icecream_count) when coins_left < 0 do
    find_ice_cream([], coins_left, icecream_count)
  end
end

costs0 = [1, 3, 2, 4, 1]

Solution.perform(costs0, 7)
|> IO.inspect()
