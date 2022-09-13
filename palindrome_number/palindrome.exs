defmodule Solve do
  def run(num) do
    num_list =
      num
      |> to_charlist()
      |> Enum.map(fn n -> n end)

    half_length = (length(num_list) / 2) |> floor()

    Enum.find(num_list, fn n -> n == 3 end)
  end
end

Solve.run(1_234_321) |> IO.inspect()
