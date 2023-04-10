# repeat

defmodule Solve do
  def run(nums) do
    num_list = nums |> to_charlist()
    reversed_nums = Enum.reverse(num_list)
    num_list == reversed_nums
  end
end

Solve.run(1234321) |> IO.inspect()
Solve.run(1224321) |> IO.inspect()
